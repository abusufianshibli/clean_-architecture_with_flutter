/// 1. **Short Description**
///    - `AuthProvider` is a state management class that handles user authentication and manages session information.
///
/// 2. **Which part of Clean Architecture is this**
///    - This class resides in the **Presentation Layer**, as it interacts with the `UserInfoUseCase` from the domain layer to fetch user information and updates the UI state.
///
/// 3. **Which part of OOP is this**
///    - This class follows **Encapsulation**, as it hides the internal state (`_Id`) and provides a public getter to access it.
///    - Implements **Abstraction**, separating the logic of user information retrieval (domain layer) from UI interaction.
///
/// 4. **Which principle followed**
///    - **Single Responsibility Principle (SRP):** The class focuses solely on managing authentication-related state and logic.
///    - **Dependency Inversion Principle (DIP):** Depends on the `UserInfoUseCase` interface from the domain layer via dependency injection.
///
/// 5. **An overview comment**
///    - `AuthProvider` leverages Flutter’s `ChangeNotifier` to notify the UI about authentication-related state changes. 
///    It acts as the bridge between the presentation and domain layers, fetching user information through `UserInfoUseCase` and ensuring a clean separation of concerns. 
///    This design ensures that business logic is kept out of the UI layer, aligning with the principles of Clean Architecture.
///    
import 'package:benchmark_project/domain/use_case/user/user_info_use_case.dart';
import 'package:flutter/cupertino.dart';

import '../../../../domain/util/result.dart';
import '../../../../injection_container.dart';

class AuthProvider extends ChangeNotifier {
  String _Id = '';

  String get employeeId => _Id;

  Future<Result<dynamic>> login({
    required String id,
    required String uId,
    required String deviceModel,
  }) async {
    _Id = id;
    final useCase = getIt.get<UserInfoUseCase>();
    final result = await useCase();
    return result;
  }

  // void removeSession() => getIt.get<RemoveSessionUseCase>()();
}
