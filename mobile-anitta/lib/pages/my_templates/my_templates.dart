import 'dart:developer';

import 'package:anitta/backend/api_requests/flow_apis.dart';
import 'package:anitta/controllers/templates_controller.dart';
import 'package:anitta/pages/my_templates/components/customer_selection_dialog.dart';
import 'package:anitta/pages/my_templates/components/offer_card.dart';
import 'package:anitta/pages/side_menu/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyTemplates extends GetView<TemplatesController> {
  const MyTemplates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
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
        title: Text(
          "My Templates",
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.grey.shade900,
            fontSize: 24.0,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(18.0),
          children: [
            OfferCard(
              title: "Group Mutuel Demo Offer",
              description: "Create a basic offer on\nStatic demo data",
              onPressed: () {
                FlowApis.demoAutomation();
              },
            ),
            Obx(
              () => Column(
                children: controller.templates
                    .map(
                      (e) => OfferCard(
                        title: e.name,
                        description: e.description ?? "",
                        onPressed: () async {
                          HapticFeedback.mediumImpact();
                          controller.selectedTemplate.value = e;

                          await showDialog(
                            context: context,
                            builder: (context) => const CustomerSelectionDialog(),
                          ).then((_) {
                            log("Dialog Closed");
                            controller.selectedTemplate.value = null;
                            controller.selectedCustomer.value = null;
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
