import 'package:dio/dio.dart';


class APIService {
  final Dio _dio = Dio();

  APIService() {
    _configureDio();
  }

  void _configureDio() {
    _dio.options = BaseOptions(
      baseUrl: "http://13.234.208.111/common/public/home-sections",
    );
  }

  Future<Map<String, dynamic>?> get() async {
    try {
      Response response = await _dio.get('');
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }
}