import 'package:anitta/pages/chat_history/chat_history.dart';
import 'package:anitta/pages/home_page/home_page_widget.dart';
import 'package:anitta/pages/language_selection/language_selection.dart';
import 'package:anitta/pages/my_templates/my_templates.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F8F8),
        elevation: 0.0,
        centerTitle: true,
        title: Image.asset(
          "assets/images/header_logo_black.png",
          height: 28.0,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 36.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomePageWidget(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.transparent,
                          textStyle: const TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        child: const Text("Home"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MyTemplates(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.transparent,
                          textStyle: const TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        child: const Text("My Templates"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ChatHistory(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.transparent,
                          textStyle: const TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        child: const Text("Chat History"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LanguageSelection(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.transparent,
                          textStyle: const TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        child: const Text("Language"),
                      ),
                    ),
                  ],
                ),
              ],
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
