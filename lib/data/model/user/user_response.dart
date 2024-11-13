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
