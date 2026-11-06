import 'dart:async';

import 'package:anitta/pages/side_menu/side_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '/backend/api_requests/api_calls.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_model.dart';

export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> with TickerProviderStateMixin {
  late HomePageModel _model;
  TextEditingController typingController = TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  List<Map<String, String>> sessionMessages = [];
  late DocumentReference documentReference;
  late DocumentReference chatSessionReference;

  @override
  void initState() {
    documentReference = FirebaseFirestore.instance.collection("chat_history").doc(FirebaseAuth.instance.currentUser?.uid);
    chatSessionReference = FirebaseFirestore.instance.collection("chat_sessions").doc(FirebaseAuth.instance.currentUser?.uid);

    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    chatSessionReference.get().then((documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot["messages"] != null) {
          List<dynamic> sessionHistory = documentSnapshot["messages"];
          List<Map<String, String>> messages = [];

          for (var message in sessionHistory) {
            messages.add({
              'role': message["role"],
              'content': message["content"],
            });
          }

          setState(() {
            sessionMessages = messages;
          });
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  void getChatResponse() async {
    _model.getResponseAPICall = await GetResponseCall.call(
      apiKeyAuth: FFAppState().apiKey,
      prompt: FFAppState().speechToTextResponse,
      language: FFLocalizations.of(context).languageCode,
      previousMessages: sessionMessages,
    );

    if ((_model.getResponseAPICall?.succeeded ?? true)) {
      documentReference.set(
        {
          'messages': FieldValue.arrayUnion([
            {
              'role': 'user',
              'content': FFAppState().speechToTextResponse,
              'timestamp': DateTime.now(),
            },
            {
              'role': 'assistant',
              'content': (_model.getResponseAPICall?.jsonBody["output"][0]["content"][0]["text"] ?? ''),
              'timestamp': DateTime.now(),
            },
          ]),
        },
        SetOptions(merge: true),
      );

      sessionMessages.add({
        'role': 'user',
        'content': FFAppState().speechToTextResponse,
      });

      sessionMessages.add({
        'role': 'assistant',
        'content': (_model.getResponseAPICall?.jsonBody["output"][0]["content"][0]["text"] ?? ''),
      });

      _model.speechOutput = await actions.fetchSpeechAndPlay(
        GetResponseCall.message(
          (_model.getResponseAPICall?.jsonBody ?? ''),
        ).toString(),
        FFAppState().apiKey,
      );
      FFAppState().timerValue = _model.speechOutput!;
      FFAppState().speechToTextResponse = '';
      safeSetState(() {});
      _model.showWaveform = true;
      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 100));
      _model.timerController.onStartTimer();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Failed',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    }

    safeSetState(() {});
  }

  @override
  void dispose() {
    chatSessionReference.set(
      {
        'messages': sessionMessages,
      },
      SetOptions(merge: false),
    );
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SideMenu(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(left: 12.0),
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Color(0xFFF8F8F8),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.menu_sharp,
              color: Colors.black,
            ),
          ),
        ),
        title: Image.asset(
          "assets/images/header_logo.png",
          height: 28.0,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              HapticFeedback.mediumImpact();
              sessionMessages.clear();
              await documentReference.delete();
              await chatSessionReference.delete();

              Fluttertoast.showToast(
                msg: "Starting a new conversation",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: const Color(0xFF131313),
              );
            },
            icon: const Icon(
              Icons.restart_alt_rounded,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 96.0),
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (_model.showWaveform)
                        Lottie.asset(
                          'assets/jsons/Audio_Wave.json',
                          width: 400.0,
                          height: 200.0,
                          fit: BoxFit.fill,
                          animate: true,
                        ),
                      if (_model.showWaveform)
                        FlutterFlowTimer(
                          initialTime: valueOrDefault<int>(
                            FFAppState().timerValue,
                            1000,
                          ),
                          getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                            value,
                            hours: false,
                            minute: false,
                            milliSecond: false,
                          ),
                          controller: _model.timerController,
                          updateStateInterval: const Duration(milliseconds: 1000),
                          onChanged: (value, displayTime, shouldUpdate) {
                            _model.timerMilliseconds = value;
                            _model.timerValue = displayTime;
                            if (shouldUpdate) safeSetState(() {});
                          },
                          onEnded: () async {
                            _model.timerController.onResetTimer();

                            _model.showWaveform = false;
                            safeSetState(() {});
                          },
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                color: const Color(0x00FFFFFF),
                                fontSize: 2.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      if (!_model.showWaveform)
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (!_model.isRecording)
                                FlutterFlowIconButton(
                                  borderRadius: 100.0,
                                  buttonSize: 150.0,
                                  fillColor: const Color(0xFFFFFFFF),
                                  icon: const Icon(
                                    Icons.mic_rounded,
                                    color: Color(0xFF131313),
                                    size: 84.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    unawaited(
                                      () async {
                                        await actions.startTextRecording();
                                      }(),
                                    );
                                    _model.isRecording = true;
                                    safeSetState(() {});
                                  },
                                ),
                              if (_model.isRecording)
                                FlutterFlowIconButton(
                                  borderRadius: 100.0,
                                  buttonSize: 150.0,
                                  fillColor: const Color(0xFFFFFFFF),
                                  icon: const Icon(
                                    Icons.stop_rounded,
                                    color: Color(0xFF131313),
                                    size: 84.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    _model.isRecording = false;
                                    safeSetState(() {});
                                    await actions.stopTextRecording();

                                    getChatResponse();
                                  },
                                ),
                            ],
                          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 18.0,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                FFAppState().speechToTextResponse,
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Figtree',
                                      fontSize: 18.0,
                                      color: FlutterFlowTheme.of(context).alternate,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 128.0,
                  color: Colors.white,
                  child: Center(
                    child: TextFormField(
                      controller: typingController,
                      textAlign: TextAlign.center,
                      cursorColor: const Color(0xFF131313),
                      onFieldSubmitted: (value) {
                        FFAppState().speechToTextResponse = value;
                        typingController.clear();
                        FocusScope.of(context).unfocus();
                        safeSetState(() {});

                        getChatResponse();
                      },
                      textCapitalization: TextCapitalization.sentences,
                      decoration: const InputDecoration(
                        hintText: "Message",
                        hintStyle: TextStyle(
                          fontFamily: "Outfit",
                          fontSize: 18.0,
                          color: Color(0xFF131313),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
