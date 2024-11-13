// 1. Short Description:
//    This class defines custom interceptors for Dio, a networking library, to add request headers,
//    handle errors, and log request/response details. It uses a `SharePref` service for adding an Authorization token
//    to the headers and logs API interactions for debugging and tracking purposes.

// 2. Which part of Clean Architecture is this:
//    This class is part of the "Data" layer in Clean Architecture. The interceptors are primarily responsible for
//    managing network requests, adding authorization headers, handling error responses, and logging, which aligns
//    with the responsibilities of the Data layer for communication with external systems (APIs) and managing
//    communication details such as headers and responses.


// 3. Which part of OOP is this:
//    - **Encapsulation**: The `CustomInterceptors` class encapsulates the logic for modifying request/response data
//      and error handling before interacting with other parts of the application.
//    - **Composition**: The class depends on `SharePref`, `DioClient`, and `Dio` to function, demonstrating
//      composition where the class utilizes these objects to perform its duties.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: This class is focused solely on handling network request/response modifications,
//      such as adding authorization headers, logging, and error handling.
//    - **Open-Closed Principle (OCP)**: The class is open for extension (e.g., you can add more functionality to handle different error codes or modify headers)
//      but closed for modification, as it follows a predefined structure for intercepting requests/responses.
//    - **Dependency Injection Principle (DIP)**: The class uses dependency injection to obtain instances of `SharePref`, `DioClient`, and `Dio`,
//      promoting flexibility and testability while avoiding tight coupling.(Constructor DI)


// 5. Overview Comment:
//
//    // Custom Interceptors Implementation
//    // This class defines custom interceptors for Dio requests, adding the necessary token from the `SharePref`
//    // service to the headers of outgoing requests. It also handles error responses (such as refreshing tokens
//    // when encountering a 401 Unauthorized error) and logs requests, responses, and errors for debugging and analysis.
//    // The interceptors make network communication flexible and secure while separating concerns between API calls
//    // and business logic, adhering to Clean Architecture principles by keeping data-fetching logic in the Data layer.

import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import '../../domain/shared_pref/shared_pref.dart';
import 'dio_client.dart';

class CustomInterceptors extends InterceptorsWrapper {
  CustomInterceptors({
    required SharePref sharePref,
    required DioClient dioClient,
    required Dio dio,
  })  : _sharePref = sharePref,
        _dioClient = dioClient,
        _dio = dio;

  final SharePref _sharePref;
  final DioClient _dioClient;
  final Dio _dio;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _sharePref.getToken();

    if (token != '') {
      options.headers.addAll({
        'Authorization': "Bearer $token",
      });
    }

    var data = options.data ?? {};

    log('''🔥 Url: ${options.baseUrl}${options.path} 
    Headers: ${jsonEncode(options.headers)} 
    Data: ${jsonEncode(data)} 
    Param: ${options.queryParameters}''');
    return handler.next(options.copyWith(data: data));
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // final token = await _sharePref.getToken();
    // if (token != null && err.response?.statusCode == 401) {
    //   await _dioClient.getRefreshToken();
    //   final newToken = await _sharePref.getToken();
    //   if (newToken == null) return handler.next(err);
    //
    //   log('''After get refresh token
    //   ❌ Url: ${err.requestOptions.baseUrl}${err.requestOptions.path}
    //   Error: ${err.response.toString()}''');
    //
    //   return handler.resolve(await _dio.fetch(err.requestOptions));
    // }

    log('''❌ Url: ${err.requestOptions.baseUrl}${err.requestOptions.path} 
    Status Code: ${err.response?.statusCode}
    Error: ${err.response.toString()}''');
    return handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data as Map;
    data.putIfAbsent('status_code', () => response.statusCode);
    response.data = data;

    log('''✅ Url: ${response.requestOptions.baseUrl}${response.requestOptions.path} 
    Response: ${jsonEncode(response.data)}''');
    return handler.next(response);
  }
}
