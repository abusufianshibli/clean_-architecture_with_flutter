// 1. **Short Description**:
//    This is an abstract class that defines the contract for handling local authentication data, such as saving
//    and removing session-related information.

// 2. **Which part of Clean Architecture is this?**
//    - **Data Layer**: This belongs to the Data Layer as it defines operations for local data storage
//      related to authentication.

// 3. **Which part of OOP is this?**
//    - **Abstraction**: This class uses abstraction to define the operations for handling local authentication
//      without specifying their implementation.
//    - **Encapsulation**: It provides a clear interface to manage local authentication data, hiding the internal
//      implementation details from the rest of the application.

// 4. **Which SOLID Principle is followed?**
//    - **Dependency Inversion Principle (DIP)**: Higher-level modules depend on this abstraction instead of specific
//      implementations, making the code more flexible and testable.
//    - **Single Responsibility Principle (SRP)**: The class is solely responsible for defining local authentication operations.

// 5. **Overview Comment**:
//    The `AuthLocalSource` abstract class is a contract within the Data Layer of the Clean Architecture. It defines two
//    core functionalities for managing authentication data locally: saving authentication info (`setAuthInfo`) and
//    removing session data (`removeSession`). By using abstraction, it allows multiple concrete implementations,
//    such as using shared preferences or a local database, to fulfill the contract, enabling flexibility and testability.


abstract class AuthLocalSource {
  /// Saves authentication information locally.
  ///
  /// - **Parameter**:
  ///   - `source`: A string representing the source of the authentication data.
  /// - **Returns**: A `Future` with a dynamic result indicating the status of the operation.

  Future<dynamic> setAuthInfo({
    required String source,
  });
  /// Removes the current session data.
  ///
  /// - This method clears any locally stored authentication details,
  ///   effectively logging the user out from the local context.
  void removeSession();
}
