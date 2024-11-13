//What is Open-Closed Principle?
/*The Open-Closed Principle requires that classes should be open for extension and closed to modification.
  Modification means changing the code of an existing class, and extension means adding new functionality.*/

// 1. Short Description:
//    This abstract class defines a contract for handling session-related data storage and retrieval,
//    providing a unified interface for managing tokens, user IDs, and session state.

// 2. Which part of Clean Architecture is this:
//    This belongs to the "Data" or "Infrastructure" layer in Clean Architecture. It abstracts the details
//    of how session data is managed and stored, allowing for flexible and interchangeable implementations
//    without impacting other parts of the system.

// 3. Which part of OOP is this:
//    This class exemplifies **Abstraction** by defining an interface that focuses on "what" operations are
//    needed rather than "how" they should be implemented. Concrete classes implementing `SharePref` will
//    handle the specifics of session management.

// 4. Which principle is followed:
//    This class follows the **Open-Closed Principle (OCP)** by being open for extension (via implementing classes)
//    and closed for modification (the interface itself does not need changes for new implementations).
//    It also adheres to the **Single Responsibility Principle (SRP)** by focusing solely on session-related data management.

// 5. Overview Comment:
//
//    // SharePref Interface
//    // This interface defines methods for managing session data, including getting and setting tokens, user IDs,
//    // and clearing session information. Implementing classes can use various storage mechanisms (e.g., shared preferences,
//    // secure storage) without affecting the rest of the application. By adhering to OOP principles, this interface
//    // maintains flexibility, consistency, and scalability.
//
//Note: The provided SharePref abstract class partially adheres to the Open-Closed Principle (OCP)//

abstract class SharePref {
  Future<String?> getToken();

  Future<String?> getRefreshToken();

  Future<int?> getUserId();

  void setToken({required String token});

  void setRefreshToken({required String token});

  void setUserId({required int userId});

  void setSession({
    required String token,
    required String refreshToken,
    int? userId,

  });

  void removeSession();
}
