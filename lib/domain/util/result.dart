// 1. Short Description:
//    `Result` is a generic class representing the outcome of an operation. It encapsulates either a successful result (`SuccessResult`) or a failure (`FailureResult`), improving error handling and simplifying response management.

// 2. Which part of Clean Architecture is this:
//    This class belongs to the **Domain** layer, specifically as a **Model** that defines a common structure for handling operation results across the application.

// 3. Which part of OOP is this:
//    - **Polymorphism**: By defining `Result` as a union of `SuccessResult` and `FailureResult`, it leverages polymorphism to handle different result types with a consistent interface.
//    - **Encapsulation**: Encapsulates the details of success or failure responses in a single class, improving readability and reusability.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: Each class has a single responsibility—`SuccessResult` holds a successful value, while `FailureResult` encapsulates an error.
//    - **Open/Closed Principle (OCP)**: This class is open to extension but closed to modification, as new result types could be added by extending `Result` without modifying existing code.

// 5. Overview Comment:
//
//    // Result Class
//    // The `Result` class is a generic type that models an operation result, which could be either a success (`SuccessResult`)
//    // or a failure (`FailureResult`). This pattern improves error handling, ensuring consistent response structures throughout the application.


import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success(
    T value,
  ) = SuccessResult;

  const factory Result.failure(
    Failure failure,
  ) = FailureResult;
}
