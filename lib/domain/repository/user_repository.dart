
// 1. Short Description:
//    This abstract class defines a contract for accessing user data, ensuring consistency
//    across all data sources for user information retrieval.

// 2. Which part of Clean Architecture is this:
//    This belongs to the "Domain" layer in Clean Architecture. The Domain layer contains
//    business logic and defines essential models and contracts, such as the `UserRepository` interface,
//    to ensure the separation of core business rules from data sources and presentation.

// 3. Which part of OOP is this:
//    This class leverages **Abstraction** by defining a generic interface without specific implementation details.
//    It establishes a standard way to fetch user information, leaving concrete implementations
//    to be provided by classes that implement this interface.

// 4. Which principle is followed:
//    This class follows the **Dependency Inversion Principle** (DIP) by depending on abstractions (the `UserRepository` interface)
//    rather than concrete implementations. Additionally, it supports the **Single Responsibility Principle** (SRP) by focusing solely
//    on defining user data access behavior without containing any implementation logic.

// 5. Overview Comment:
//
//    // UserRepository Abstract
//    // This interface serves as a contract in the Domain layer, defining the required method `getUserInfo` to
//    // retrieve user data. Concrete implementations of `UserRepository` will provide the actual
//    // data-fetching logic from sources such as APIs, databases, or caches. The class adheres to Clean Architecture principles
//    // by maintaining separation of concerns and ensuring that the Domain layer remains independent of specific data sources.
//
import 'package:benchmark_project/domain/model/user/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUserInfo();
}
