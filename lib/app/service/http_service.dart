import 'package:dio/dio.dart';
import 'package:get_rest_api/app/data/constant/consts.dart';

class HttpService {
  final Dio _dio = Dio();

  HttpService() {
    _configureDio();
  }

  void _configureDio() {
    _dio.options =
        BaseOptions(baseUrl: "https://api.cryptorank.io/v1/", queryParameters: {
      "api_key": CRYPTO_RANK_API_KTY,
    });
  }

  Future<dynamic> get(String path) async{
    try {
      Response response = await _dio.get(path);
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}
