import 'package:anitta/controllers/templates_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateOfferButton extends GetView<TemplatesController> {
  const CreateOfferButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextButton(
        onPressed: controller.selectedCustomer.value == null ? null : () => controller.createOffer(),
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFF0F0F0),
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
        ),
        child: const Text(
          "Create Offer",
        ),
      ),
    );
  }
}
