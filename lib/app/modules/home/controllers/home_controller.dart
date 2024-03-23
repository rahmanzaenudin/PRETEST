import 'package:get/get.dart';
import 'package:pretest/app/modules/home/models/model_view.dart';
import 'package:pretest/app/modules/home/providers/provider_pic.dart';

class HomeController extends GetxController {
  Future<ViewM> getM() async {
    final data = await ProviderM().getM();
    return data;
  }
}
