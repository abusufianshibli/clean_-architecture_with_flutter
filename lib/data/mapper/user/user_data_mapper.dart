// 1. Short Description:
//    This extension on `UserResponse` provides a mapping method, `toDomain()`, that converts a `UserResponse` object
//    (typically used in the data layer) into a `UserEntity` (used in the domain layer). This allows seamless transformation
//    of data models for use in business logic, adhering to Clean Architecture's separation of concerns.

// 2. Which part of Clean Architecture is this:
//    This is part of the "Data" to "Domain" transformation layer. It acts as a data mapper that converts external data models
//    (`UserResponse`) into the internal models (`UserEntity`) used in the domain layer, facilitating a clear boundary between layers.

// 3. Which part of OOP is this:
//    - **Encapsulation**: By placing the mapping logic within an extension, this code encapsulates the transformation details,
//      making it easy to use and maintaining separation between data and domain objects.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: The extension is focused solely on converting `UserResponse` to `UserEntity`,
//      keeping each layer's model separate.
//    - **Open-Closed Principle (OCP)**: The extension is open to adding new mapping logic if `UserResponse` or `UserEntity`
//      changes without modifying the class structure itself.

// 5. Overview Comment:
//
//    // UserDataMapper Extension
//    // This extension on `UserResponse` provides a `toDomain` method that transforms a data layer object (`UserResponse`)
//    // into a domain layer object (`UserEntity`). This mapping helps maintain layer boundaries and supports Clean Architecture
//    // by separating data concerns from domain logic. The mapping logic is contained within the extension, following SRP
//    // and OCP principles.

import '../../../domain/model/user/user_entity.dart';
import '../../model/user/user_response.dart';

extension UserDataMapper on UserResponse {
  UserEntity toDomain() {
    return UserEntity(
      id: id,
      name: name,
      phone: phone,
      designation: designation,
      email: email,
      isActive: isActive,
      office: office,
      officeAddress: officeAddress,
      officeLatitude: officeLatitude,
      officeLongitude: officeLongitude,
      officeRadius: officeRadius,
      teamName: teamName,
      role: role,
    );
  }
}
