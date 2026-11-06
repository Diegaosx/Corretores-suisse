import 'dart:convert';

import 'package:anitta/controllers/templates_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetResponseCall {
  static Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? prompt = '',
    String? language = '',
    List<Map<String, String>> previousMessages = const [],
  }) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    final templatesController = Get.find<TemplatesController>();

    final config = await db.collection("config").doc("global").get();
    final appState = FFAppState();

    String systemPrompt = config['system_prompt'];
    String userPrompt = config['user_prompt'];
    String openaiProxyToken = config['openai_proxy_token'];

    systemPrompt = systemPrompt.replaceAll('%LANGUAGE%', appState.currentLanguage);
    systemPrompt = systemPrompt.replaceAll('%CUSTOMERS%', _serializeList(templatesController.customers.map((e) => e.toAPIJson()).toList()));
    systemPrompt = systemPrompt.replaceAll('%TEMPLATES%', _serializeList(templatesController.templates.map((e) => e.toAPIJson()).toList()));
    systemPrompt = systemPrompt.replaceAll('"', "'");

    userPrompt = userPrompt.replaceAll('%USER_PROMPT%', prompt ?? '');

    final ffApiRequestBody = jsonEncode({
      "system_prompt": systemPrompt,
      "user_prompt": userPrompt,
      "model": config['openai_model'],
      "max_tokens": config['max_tokens'],
      "temperature": config['temperature'],
      "user": FirebaseAuth.instance.currentUser?.uid,
      "messages": previousMessages,
    });
    return ApiManager.instance.makeApiCall(
      callName: 'GetResponse',
      apiUrl: 'https://ai.neuralswiss.ch/anitta/openai/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Api-Key $openaiProxyToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.output[0].content[0].text''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() => 'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
