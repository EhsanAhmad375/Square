import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class MyController extends GetxController {
  RxBool? isPopup;
  RxList<String> pageData = RxList<String>([
    'asset/onBoard1.png',
    'asset/onBoard2.png',
    'asset/onBoard3.png',
  ]);

  RxList<String> titles = RxList<String>([
    'Get Home Maintained',
    'Get the best Solutions',
    'Cleaning',
  ]);

  RxList<String> descriptions = RxList<String>([
    'Lorem ipsum dolor sit amet consectetur. Nunc faucibus aenean dignissim dignissim.',
    'Lorem ipsum dolor sit amet consectetur. Nunc faucibus aenean dignissim dignissim.',
    'Lorem ipsum dolor sit amet consectetur. Nunc faucibus aenean dignissim dignissim.',
  ]);
}
