import 'package:anitta/controllers/templates_controller.dart';
import 'package:anitta/pages/my_templates/components/create_offer_button.dart';
import 'package:anitta/pages/my_templates/components/customer_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerSelectionDialog extends GetView<TemplatesController> {
  const CustomerSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      titlePadding: const EdgeInsets.all(18.0),
      contentPadding: const EdgeInsets.all(18.0),
      children: [
        const Text(
          "Select a Customer",
          style: TextStyle(
            fontFamily: "Outfit",
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 36.0,
        ),
        SizedBox(
          height: 256.0,
          child: SingleChildScrollView(
            child: Obx(() => Column(
                  children: controller.customers
                      .map(
                        (customer) => Row(
                          children: [
                            Expanded(
                              child: CustomerCard(
                                customer: customer,
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                )),
          ),
        ),
        const SizedBox(
          height: 36.0,
        ),
        const CreateOfferButton(),
      ],
    );
  }
}
