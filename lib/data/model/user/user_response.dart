/*
1. **Short Description**:
   The `UserResponse` is a data class that represents the structure of the user response received from a remote API.
   It uses the `freezed` package for immutability and equality and the `JsonKey` annotations for JSON serialization/deserialization.

2. **Which part of Clean Architecture is this?**
   - **Data Layer**: This belongs to the Data Layer. It is a data transfer object (DTO) that maps JSON responses from
     the API to a usable Dart object.

3. **Which part of OOP is this?**
   - **Encapsulation**: The use of `freezed` enforces immutability, encapsulating the data within this object.
   - **Polymorphism**: The `freezed` package generates union types for different states, enabling polymorphic usage
     in certain cases.

4. **Which SOLID Principle is followed?**
   - **Single Responsibility Principle (SRP)**: This class has a single responsibility: defining the structure
     and handling the JSON conversion for the user response.

5. **Overview Comment**:
   The `UserResponse` class represents the API response for user data. It is built using the `freezed` package to ensure
   immutability, concise syntax, and robust equality checks. The class also leverages the `json_serializable` package
   (via `freezed`) for seamless JSON parsing. Each field is annotated with `JsonKey` to map JSON keys to Dart properties.
   This DTO acts as a bridge between the raw JSON data and the application's domain models, adhering to Clean Architecture
   principles by being part of the Data Layer.
*/

// A data class representing a user response model. This class uses the `freezed` package
// to automatically generate immutability, equality, copy, and serialization/deserialization
// functionality. Each field corresponds to a key in the JSON response for user data.
// and a generate json parse model to json converting json.

//Freezed: The @freezed annotation is part of the freezed package, which generates boilerplate code for immutable data classes. It provides features like automatic == and hashCode implementations, copyWith methods, and support for serialization.
// @JsonKey: This annotation, from the json_annotation package, maps each field to a specific JSON key. It allows customization of the JSON key names, especially if the API response keys differ from the class field names.
// fromJson: The fromJson factory method uses the json_serializable package to generate code that converts JSON data into an instance of UserResponse. The generated user_response.g.dart file contains the actual implementation.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "isActive") bool? isActive,
    @JsonKey(name: "office") String? office,
    @JsonKey(name: "officeAddress") String? officeAddress,
    @JsonKey(name: "officeLatitude") double? officeLatitude,
    @JsonKey(name: "officeLongitude") double? officeLongitude,
    @JsonKey(name: "officeRadius") int? officeRadius,
    @JsonKey(name: "teamName") String? teamName,
    @JsonKey(name: "role") String? role,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
