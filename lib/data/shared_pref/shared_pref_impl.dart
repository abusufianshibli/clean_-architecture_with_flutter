// 1. Short Description:
//    This class provides an implementation of the `SharePref` interface using the `FlutterSecureStorage` package
//    to securely store and retrieve session-related data (tokens, user IDs, and roles). It uses secure storage
//    options for both Android and iOS to ensure sensitive data is handled securely.

// 2. Which part of Clean Architecture is this:
//    This class belongs to the "Data" layer in Clean Architecture. It implements the `SharePref` interface defined
//    in the domain layer, providing the concrete logic for session data storage and retrieval. It interacts with
//    external storage systems like secure storage but remains isolated from the rest of the application.

// 3. Which part of OOP is this:
//    This class demonstrates **Inheritance** by implementing the `SharePref` interface, inheriting its contract and
//    providing concrete functionality. It also leverages **Encapsulation** by managing session data within a secure
//    storage system and exposing only necessary methods.

// 4. Which principle is followed:
//    - **Dependency Injection Principle (DIP)**: The class uses `@LazySingleton` from `injectable` to inject dependencies,
//      which helps manage class dependencies and ensures that the correct instance is provided when needed.
//    - **Open-Closed Principle (OCP)**: This class is open for extension (i.e., new functionalities or storage methods can
//      be added by extending `SharePref`) but closed for modification, as it doesn't change the original interface.
//    - **Single Responsibility Principle (SRP)**: This class focuses solely on securely storing and retrieving session data.

// 5. Overview Comment:
//
//    // SharePrefImpl Implementation
//    // This concrete implementation of `SharePref` uses `FlutterSecureStorage` for securely storing sensitive session data.
//    // It provides methods for reading and writing tokens, user IDs, and refresh tokens, as well as a method to clear all session
//    // data. The class is configured to use secure storage options tailored for Android and iOS. It is injected using
//    // dependency injection (`@LazySingleton`) to ensure a single instance is used throughout the application.
//    // The implementation adheres to Clean Architecture principles by encapsulating data access logic in the Data layer and
//    // leaving the Domain layer to focus on business logic.

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../domain/shared_pref/shared_pref.dart';

@LazySingleton(as: SharePref)
class SharePrefImpl extends SharePref {
  final _sharedPref =  const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    ),
  );

  static const _kTokenKey = '_token_key_';
  static const _kRefreshTokenKey = '_refresh_token_key_';
  static const _kUserIdKey = '_user_id_key_';
  static const _kUserRoleKey = '_user_role_key_';

  @override
  Future<String?> getToken() async {
    return await _sharedPref.read(key: _kTokenKey);
  }

  @override
  Future<int?> getUserId() async {
    final id = await _sharedPref.read(key: _kUserIdKey);
    return int.tryParse(id ?? '');
  }

  @override
  void setRefreshToken({required String token}) {
    _sharedPref.write(key: _kRefreshTokenKey, value: token);
  }

  @override
  void setToken({required String token}) {
    _sharedPref.write(key: _kTokenKey, value: token);
  }

  @override
  void setUserId({required int userId}) {
    _sharedPref.write(key: _kUserIdKey, value: userId.toString());
  }

  @override
  void removeSession() {
    _sharedPref.delete(key: _kTokenKey);
    _sharedPref.delete(key: _kUserIdKey);
    _sharedPref.delete(key: _kUserRoleKey);
    _sharedPref.delete(key: _kRefreshTokenKey);
  }

  @override
  Future<String?> getRefreshToken() {
    return _sharedPref.read(key: _kRefreshTokenKey);
  }

  @override
  void setSession({
    required String token,
    required String refreshToken,
    int? userId,
  }) {
    _sharedPref.write(key: _kTokenKey, value: token);
    _sharedPref.write(key: _kUserIdKey, value: userId.toString());
    _sharedPref.write(key: _kRefreshTokenKey, value: refreshToken);
  }
}
