import 'package:anitta/controllers/templates_controller.dart';
import 'package:anitta/models/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomerCard extends GetView<TemplatesController> {
  final Customer customer;

  const CustomerCard({
    super.key,
    required this.customer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        controller.selectedCustomer.value = customer;
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.only(bottom: 24.0),
          decoration: BoxDecoration(
            color: const Color(0xFFF0F0F0),
            border: controller.selectedCustomer.value?.id == customer.id
                ? Border.all(
                    color: const Color(0xFF000000),
                    width: 2.0,
                  )
                : Border.all(
                    color: Colors.transparent,
                    width: 2.0,
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                customer.name,
                style: TextStyle(
                  fontFamily: "Outfit",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade900,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                customer.email,
                style: TextStyle(
                  fontFamily: "Outfit",
                  fontSize: 12.0,
                  color: Colors.grey.shade900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
