// 1. Short Description:
//    `UserInfoUseCase` is a use case class responsible for handling the process of retrieving user information from the repository and returning it as a `Result<UserEntity>`.

// 2. Which part of Clean Architecture is this:
//    This class belongs to the **Domain** layer, specifically the **Use Case** part, where it coordinates and executes the logic of retrieving user data while abstracting the data source implementation.

// 3. Which part of OOP is this:
//    - **Encapsulation**: It encapsulates the logic of managing and processing user information retrieval, making it reusable across different parts of the application.
//    - **Dependency Injection**: Follows the Dependency Injection principle by requiring a `UserRepository` to be provided, making it more testable and flexible.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: The class has a single responsibility—to retrieve user information and handle result or error processing.
//    - **Dependency Inversion Principle (DIP)**: It depends on an abstraction (`UserRepository`) rather than a concrete implementation, allowing for flexibility in data sources.

// 5. Overview Comment:
//
//    // UserInfoUseCase Class
//    // `UserInfoUseCase` encapsulates the logic for fetching user information. It interacts with the `UserRepository`
//    // to retrieve data and processes the response as a `Result<UserEntity>`, ensuring uniform error handling and response format.

import 'package:injectable/injectable.dart';

import '../../model/user/user_entity.dart';
import '../../repository/user_repository.dart';
import '../../util/failure.dart';
import '../../util/result.dart';

@LazySingleton()
class UserInfoUseCase {
  final UserRepository _repository;

  UserInfoUseCase({
    required UserRepository repository,
  }) : _repository = repository;

  Future<Result<UserEntity>> call() async => await _repository
      .getUserInfo()
      .then((value) => Result.success(value))
      .onError((exception, stackTrace) =>
          Result.failure(Failure.mapDioException(exception)));
}
