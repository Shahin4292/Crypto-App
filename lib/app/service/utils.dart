import 'package:get/get.dart';
import 'package:get_rest_api/app/service/http_service.dart';

Future<void> registerService() async {
  Get.put(HttpService());
}
