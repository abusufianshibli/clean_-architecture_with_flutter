// 1. Short Description:
//    The `UserRemoteSource` abstract class defines a contract for remote data operations related to user information.
//    It includes a method, `getUserInfo()`, that retrieves a `UserEntity` object, representing user data from a remote source.

// 2. Which part of Clean Architecture is this:
//    This belongs to the "Data" layer in Clean Architecture, specifically as a data source interface for accessing remote
//    user information, abstracting external data dependencies from the core business logic.

// 3. Which part of OOP is this:
//    - **Abstraction**: This class provides an abstract definition for fetching user data from a remote source without exposing
//      specific implementation details, allowing flexibility for multiple data source implementations.

// 4. Which principle is followed:
//    - **Dependency Inversion Principle (DIP)**: The class defines a high-level interface that depends on abstractions, allowing
//      the `UserRemoteSource` to be implemented by various remote sources without changing the interface.
//    - **Single Responsibility Principle (SRP)**: The class is solely responsible for defining the retrieval of user data from
//      a remote source, separating it from other concerns.

// 5. Overview Comment:
//
//    // UserRemoteSource Abstract Class
//    // This abstract class defines an interface for remote user data access. By specifying a `getUserInfo` method that returns a
//    // `UserEntity`, it abstracts away implementation details and follows Clean Architecture by separating data layer concerns.
//    // This abstraction adheres to the SRP and DIP principles, enabling flexible and testable remote data retrieval.

import '../../model/user/user_entity.dart';

abstract class UserRemoteSource {
  Future<UserEntity> getUserInfo();
}
