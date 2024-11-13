// 1. Short Description
// The `Failure` class defines various types of error conditions that might occur during network communication,
// particularly with the Dio HTTP client. It categorizes errors such as timeouts, server issues, SSL problems, and more.
// It also provides a utility method, `mapDioException`, to convert Dio exceptions into structured custom error types.

//
// 2. Which part of Clean architecture is this
// This belongs to the **Domain Layer** of Clean Architecture. It defines custom error types that are used to represent failure states in the application,
// allowing the rest of the application (such as use cases and repositories) to react to these errors in a controlled and consistent manner.

//
// 3. Which part of OOP is this
// This is part of **Exception Handling** in Object-Oriented Programming (OOP). It models different failure types as immutable objects that
// can be used to represent errors in a structured manner across the application, making the code more robust and manageable.

//
// 4. Which principle followed
// - **Single Responsibility Principle (SRP)**: Each error type has a specific responsibility to represent a particular kind of failure (e.g., timeout, socket exception).
// - **Open/Closed Principle (OCP)**: New error types can be added without modifying the existing error-handling logic, as the class is designed to be extendable.
//
// 5. An overview comment
// This class serves as a structured way to handle different types of errors in a Dart/Flutter application. By utilizing the `freezed` package,
// it offers immutability, ensures type safety, and allows for pattern matching, making it easy to manage different failure cases in network operations.
// The `mapDioException` function provides a clear mapping of Dio exceptions to the custom `Failure` types, making it easy to propagate meaningful
// error messages through the application.


import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.cancelException({required String message}) =
      CancelException;

  const factory Failure.connectionTimeoutException({required String message}) =
      ConnectionTimeoutException;

  const factory Failure.receiveTimeoutException({required String message}) =
      ReceiveTimeoutException;

  const factory Failure.sendTimeoutException({required String message}) =
      SendTimeoutException;

  const factory Failure.socketException({
    required String message,
    required int statusCode,
  }) = SocketException;

  const factory Failure.unrecognizedException({required String message}) =
      UnrecognizedException;

  const factory Failure.tokenExpiredException({required String message}) =
      TokenEpiredException;

  const factory Failure.serverException({
    required String message,
    required int statusCode,
    dynamic data,
  }) = ServerException;

  const factory Failure.formatException({required String message}) =
      FormatException;

  const factory Failure.serializationException({required String message}) =
      SerializationException;

  static Failure mapDioException(Object? exception) {
    try {
      if (exception is DioException) {
        return switch (exception.type) {
          DioExceptionType.connectionTimeout =>
            const Failure.connectionTimeoutException(
              message: 'Connection not established',
            ),
          DioExceptionType.sendTimeout => const Failure.sendTimeoutException(
              message: 'Send timeout in connection with API server',
            ),
          DioExceptionType.receiveTimeout =>
            const Failure.receiveTimeoutException(
              message: 'Receive timeout in connection with API server',
            ),
          DioExceptionType.badCertificate => Failure.socketException(
              message: 'SSL certificate is not valid',
              statusCode: exception.response?.statusCode ?? 400,
            ),
          DioExceptionType.cancel => const Failure.cancelException(
              message: 'Request to API server was cancelled',
            ),
          DioExceptionType.connectionError => Failure.socketException(
              message: 'No Internet connection',
              statusCode: exception.response?.statusCode ?? 400,
            ),
          DioExceptionType.badResponse => Failure.serverException(
              message: exception.response?.data?['message'] ??
                  exception.response?.statusMessage ??
                  'Bad response from API server',
              statusCode: exception.response?.statusCode ?? 400,
              data: exception.response?.data,
            ),
          _ => const Failure.unrecognizedException(
              message: 'Unknown error occurred',
            ),
        };
      }
    } on FormatException catch (e) {
      return Failure.formatException(message: e.message);
    }
    return const Failure.unrecognizedException(
      message: 'Unknown error occurred',
    );
  }

  static Failure mapParsingException(Exception exception) {
    return const Failure.serializationException(
      message: 'Failed to parse network response to model or vice versa',
    );
  }
}
