import 'package:anitta/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F8F8),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Image.asset(
          "assets/images/header_logo_black.png",
          height: 28.0,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 36.0),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Select your language",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Consumer<FFAppState>(
                builder: (context, ref, child) {
                  final currentLanguage = ref.currentLanguage;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: ["English", "German", "Swiss German", "Portuguese"]
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              HapticFeedback.mediumImpact();
                              Provider.of<FFAppState>(context, listen: false).update(() {
                                FFAppState().currentLanguage = e;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                              ),
                              child: Text(
                                e,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: e == currentLanguage ? FontWeight.bold : FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 64.0,
            ),
          ],
        ),
      ),
    );
  }
}
