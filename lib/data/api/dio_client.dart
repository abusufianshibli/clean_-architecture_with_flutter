import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/shared_pref/shared_pref.dart';
import '../constant/api_constant.dart';

@LazySingleton()
class DioClient {
  final SharePref _sharePerf;
  final Dio _dio;

  DioClient({required SharePref sharePerf})
      : _sharePerf = sharePerf,
        _dio = Dio(
          BaseOptions(
            baseUrl: ApiConstant.baseURL,
            contentType: "application/json",
          ),
        );

  Future<void> getRefreshToken() async {
    try {
      final response = await _dio.post(
        ApiConstant.refreshToken,
        data: {
          "refreshToken": _sharePerf.getRefreshToken(),
          "accessToken": _sharePerf.getToken(),
        },
      );
      if (response.statusCode == 200) {
      } else {
        _sharePerf.removeSession();
      }
    } catch (e) {
      _sharePerf.removeSession();
    }
  }
}
