// 1. Short Description:
//    This function sets up the network module by registering a `RestClient` in the dependency injection container (`getIt`).
//    It configures the `Dio` instance with default options (base URL, content type) and adds custom interceptors for handling
//    request/response modifications and logging. The `RestClient` is made available for lazy initialization when needed.

// 2. Which part of Clean Architecture is this:
//    This function belongs to the "Data" layer in Clean Architecture. It configures and registers the network client (`RestClient`)
//    with the necessary interceptors for making API calls. The network configuration and dependency injection setup are
//    part of the infrastructure layer, ensuring that the API communication is abstracted and modular.

// 3. Which part of OOP is this:
//    - **Composition**: The `RestClient` is composed of a `Dio` instance with a `CustomInterceptors` interceptor.
//      It combines different objects to form a complete network client.

// 4. Which principle is followed:
//    - **Dependency Injection Principle (DIP)**: This method uses dependency injection to supply the necessary components (`Dio`, `CustomInterceptors`, etc.)
//      into the `RestClient` class. The objects are injected rather than being directly created within the class, improving flexibility and testability.
//    - **Single Responsibility Principle (SRP)**: The function is solely responsible for setting up and configuring the network client.
//      It delegates responsibilities like handling API requests to the `RestClient` and interceptors, maintaining clear boundaries of concern.
//    - **Open-Closed Principle (OCP)**: This setup is open for extension by allowing new interceptors or configuration changes to be added
//      without modifying the existing `RestClient` setup.


// 5. Overview Comment:
//
//    // Network Module Setup
//    // This function initializes the network module by configuring a `RestClient` with a `Dio` instance and attaching custom interceptors.
//    // It registers the `RestClient` in the dependency injection container for lazy instantiation. The interceptors handle request/response
//    // modifications, logging, and error handling. The setup ensures that the network client is prepared to interact with external APIs
//    // and abstracts away the details of network communication, adhering to Clean Architecture principles and enabling maintainable, testable code.

import 'package:dio/dio.dart';

import '../../injection_container.dart';
import '../constant/api_constant.dart';
import 'api_client.dart';
import 'interceptor.dart';

Future<void> setupNetworkModule() async {
  getIt.registerLazySingleton<RestClient>(
    () => RestClient(
      Dio(
        BaseOptions(
          contentType: "application/json",
          baseUrl: ApiConstant.baseURL,
        ),
      )..interceptors.add(
          CustomInterceptors(
            sharePref: getIt(),
            dioClient: getIt(),
            dio: Dio(),
          ),
        ),
    ),
  );
}
