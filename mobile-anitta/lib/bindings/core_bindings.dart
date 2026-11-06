import 'package:anitta/controllers/templates_controller.dart';
import 'package:get/get.dart';

class CoreBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<TemplatesController>(
      TemplatesController(),
      permanent: true,
    );
  }
}
