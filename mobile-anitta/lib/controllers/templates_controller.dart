import 'dart:developer';

import 'package:anitta/backend/api_requests/flow_apis.dart';
import 'package:anitta/models/customer.dart';
import 'package:anitta/models/template.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class TemplatesController extends GetxController {
  RxList<Template> templates = <Template>[].obs;
  RxList<Customer> customers = <Customer>[].obs;

  Rx<Template?> selectedTemplate = Rxn<Template?>();
  Rx<Customer?> selectedCustomer = Rxn<Customer?>();

  @override
  void onInit() async {
    FlowApis.getTemplates().then((templates) {
      log("Templates: ${templates.length}");
      this.templates.value = templates;
    });

    FlowApis.getAllCustomers().then((customers) {
      log("Customers: ${customers.length}");
      this.customers.value = customers;
    });

    super.onInit();
  }

  void createOffer() async {
    HapticFeedback.mediumImpact();

    bool created = await FlowApis.createCustomerOffer(
      selectedCustomer.value!,
      selectedTemplate.value!,
    );

    Get.back();

    if (created) {
      await Fluttertoast.showToast(msg: "Offer Created Successfully");
    } else {
      await Fluttertoast.showToast(msg: "Failed to create offer");
    }
  }
}
