import '../controller/large_product_cards_one_controller.dart';
import 'package:get/get.dart';

class LargeProductCardsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LargeProductCardsOneController());
  }
}
