// 1. Short Description:
//    `UserEntity` serves as a data model representing user information within the application, encapsulating user-related fields
//    such as ID, name, contact info, and office details.

// 2. Which part of Clean Architecture is this:
//    This is part of the "Domain" layer, specifically serving as an **Entity**. Entities are core data models that contain the
//    business logic or essential properties representing the main features of the domain.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Encapsulates user attributes in a single class, providing a structured way to handle user data across
//      the application.
//    - **Modularity**: Keeps the user data representation separate from other application logic, aiding reusability and clarity.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: Focuses solely on representing a user and their associated information. This
//      helps keep the class clear and maintainable.

// 5. Overview Comment:
//
//    // UserEntity Class
//    // `UserEntity` is a core data model within the Domain layer, representing a user and their associated properties.
//    // It centralizes all user attributes, aiding maintainability and reusability, and follows SRP by encapsulating only user-related data.


class UserEntity {
  String? id;
  String? name;
  String? phone;
  String? designation;
  String? email;
  bool? isActive;
  String? office;
  String? officeAddress;
  double? officeLatitude;
  double? officeLongitude;
  int? officeRadius;
  String? teamName;
  String? role;

  UserEntity({
    this.id,
    this.name,
    this.phone,
    this.designation,
    this.email,
    this.isActive,
    this.office,
    this.officeAddress,
    this.officeLatitude,
    this.officeLongitude,
    this.officeRadius,
    this.teamName,
    this.role,
  });

}
