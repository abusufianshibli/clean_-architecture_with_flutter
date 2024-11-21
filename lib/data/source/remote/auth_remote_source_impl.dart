// 1. **Short Description**:
//    This class, `UserRemoteSourceImpl`, implements the `UserRemoteSource` interface. It fetches user data from a remote API using a REST client
//    and maps the response to a `UserEntity`.

// 2. **Which part of Clean Architecture is this?**
//    - **Data Layer**: This is part of the Data Layer in Clean Architecture. It acts as the data source for fetching user-related information
//      from a remote API and provides it to higher layers like the Domain or Presentation layers.

// 3. **Which part of OOP is this?**
//    - **Abstraction**: Implements the `UserRemoteSource` interface, adhering to an abstraction that defines the expected behavior.
//    - **Encapsulation**: Hides the details of how the API call is made (`_client.login({})`) and exposes a simplified method `getUserInfo()`.

// 4. **Which SOLID Principle is followed?**
//    - **Dependency Inversion Principle (DIP)**: Depends on the abstraction (`UserRemoteSource`) instead of a concrete implementation.
//      This allows the dependency to be swapped easily (e.g., for testing).
//    - **Single Responsibility Principle (SRP)**: The class has one responsibility: fetching user data from a remote source.
//    - **Open-Closed Principle (OCP)**: The class is open for extension (e.g., adding new methods for different API endpoints) but closed for modification
//      of its existing behavior.

// 5. **Overview Comment**:
//    The `UserRemoteSourceImpl` class is a concrete implementation of the `UserRemoteSource` interface. It leverages dependency injection
//    (via the `RestClient` constructor parameter) to decouple the logic for API communication. This class adheres to Clean Architecture principles
//    by staying within the Data Layer, serving as a boundary between the external data source (API) and the application’s core. Its design ensures
//    testability, maintainability, and flexibility.


import 'package:benchmark_project/domain/model/user/user_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/source/remote/user_remote_source.dart';
import '../../api/api_client.dart';

@LazySingleton(as: UserRemoteSource)
class UserRemoteSourceImpl extends UserRemoteSource {
  UserRemoteSourceImpl({
    required RestClient client,
  }) : _client = client;

  final RestClient _client;

  @override
  Future<UserEntity> getUserInfo()async {
    // TODO: implement getUserInfo
   return await _client.login({});
  }
}
