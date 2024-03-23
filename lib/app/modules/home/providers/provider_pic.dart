import 'package:get/get.dart';
import 'package:pretest/app/modules/home/models/model_view.dart';

class ProviderM extends GetConnect {
  Future<ViewM> getM() async {
    final Response = await get('https://randomuser.me/api/');
    if (Response.status.hasError) {
      return Future.error(Response.statusText!);
    } else {
      return ViewM.fromJson(Response.body as Map<String, dynamic>);
    }
  }
}
