import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final String title;
  final String description;
  final Function? onPressed;

  const OfferCard({
    super.key,
    required this.title,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 24.0),
      color: const Color(0xFFF0F0F0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: "Outfit",
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade900,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            description,
            style: TextStyle(
              fontFamily: "Outfit",
              fontSize: 18.0,
              color: Colors.grey.shade900,
            ),
          ),
          const SizedBox(
            height: 36.0,
          ),
          Row(
            children: [
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (onPressed != null) {
                      onPressed!();
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    textStyle: const TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 16.0,
                    ),
                  ),
                  child: const Text(
                    "Start",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
