import '../controller/results_controller.dart';
import 'package:get/get.dart';

class ResultsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultsController());
  }
}
