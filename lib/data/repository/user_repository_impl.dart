// 1. Short Description:
//    This class implements the `UserRepository` interface and acts as a data repository that interacts with a remote source
//    to fetch user-related information. Currently, the `getUserInfo` method is not implemented but will be expected
//    to retrieve user data from a remote source when completed.

// 2. Which part of Clean Architecture is this:
//    This class belongs to the "Data" layer in Clean Architecture. It provides the concrete implementation of the
//    `UserRepository` interface, responsible for interacting with the remote data source (`UserRemoteSource`) to
//    fetch user information. This separates the domain logic from the external data fetching process.

// 3. Which part of OOP is this:
//    - **Inheritance**: `ProfileRepositoryImpl` inherits from the `UserRepository` interface, providing concrete functionality.
//    - **Encapsulation**: It encapsulates the logic for fetching user data from a remote source and exposes it through the
//      `getUserInfo` method, keeping the details of data retrieval hidden from the rest of the application.

// 4. Which principle is followed:
//    - **Dependency Injection Principle (DIP)**: The `ProfileRepositoryImpl` class depends on `UserRemoteSource` via constructor injection.
//      This allows flexibility and testability, as different remote sources can be injected without modifying the repository.
//    - **Single Responsibility Principle (SRP)**: This class is focused on managing user-related data retrieval logic, making it responsible
//      only for the interaction with the remote data source and adhering to the SRP.
//    - **Open-Closed Principle (OCP)**: The class is open for extension (additional data sources or repositories can be added by extending `UserRepository`),
//      but closed for modification, as it doesn't need changes to add new functionality to the repository interface.

// 5. Overview Comment:
//
//    // ProfileRepositoryImpl Implementation
//    // This class implements the `UserRepository` interface and uses dependency injection to inject a remote data source
//    // (`UserRemoteSource`) for retrieving user-related data. The method `getUserInfo` is intended to fetch user data
//    // from the remote source, but it is currently unimplemented. The class adheres to Clean Architecture principles
//    // by keeping the domain layer (business logic) separate from data-fetching details (remote data source).

import 'package:benchmark_project/domain/model/user/user_entity.dart';
import 'package:benchmark_project/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/source/remote/user_remote_source.dart';

@LazySingleton(as: UserRepository)
class ProfileRepositoryImpl extends UserRepository {
  ProfileRepositoryImpl({
    required UserRemoteSource remoteSource,
  }) : _remoteSource = remoteSource;

  final UserRemoteSource _remoteSource;

  @override
  Future<UserEntity> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

}
