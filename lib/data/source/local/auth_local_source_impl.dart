/*
1. **Short Description**:
   This is the concrete implementation of the `AuthLocalSource` abstraction. It interacts with the shared preferences
   to persist and remove local authentication data.

2. **Which part of Clean Architecture is this?**
   - **Data Layer**: This belongs to the Data Layer of the Clean Architecture. It provides the implementation
     for local data storage operations defined in the `AuthLocalSource` abstraction.

3. **Which part of OOP is this?**
   - **Inheritance**: This class implements the `AuthLocalSource` abstraction, adhering to its contract.
   - **Encapsulation**: The use of `_sharePref` hides the internal implementation details of the shared preference operations
     from other parts of the application.

4. **Which SOLID Principle is followed?**
   - **Dependency Inversion Principle (DIP)**: The class depends on the abstraction (`AuthLocalSource`), not on a concrete implementation.
   - **Single Responsibility Principle (SRP)**: The class is solely responsible for handling the authentication data
     operations using shared preferences.

5. **Overview Comment**:
   The `AuthLocalSourceImpl` class is a concrete implementation of the `AuthLocalSource` abstraction. It leverages the
   `SharePref` utility to manage local authentication data, such as saving tokens (`setAuthInfo`) and removing session
   details (`removeSession`). This class follows Clean Architecture principles by being part of the Data Layer,
   enabling the application to handle authentication data independently of its storage implementation. Dependency
   Injection through the constructor ensures flexibility and testability.
*/
import 'package:injectable/injectable.dart';

import '../../../domain/shared_pref/shared_pref.dart';
import '../../../domain/source/local/auth_local_source.dart';

@LazySingleton(as: AuthLocalSource)
class AuthLocalSourceImpl extends AuthLocalSource {
  final SharePref _sharePref;

  AuthLocalSourceImpl({
    required SharePref sharePref,
  }) : _sharePref = sharePref;

  @override
  Future<dynamic> setAuthInfo({
    required String source,
  }) async {
    _sharePref.setToken(token: source);
    return source;
  }

  @override
  void removeSession() {
    _sharePref.removeSession();
  }
}
