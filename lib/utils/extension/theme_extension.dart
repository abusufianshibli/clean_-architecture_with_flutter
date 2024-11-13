// 1. Short Description:
//    This `ThemeExtension` provides an extension on `BuildContext` to access the current `ThemeData` instance, allowing
//    easier and more readable access to the theme from any widget in the app.

// 2. Which part of Clean Architecture is this:
//    This belongs to the "Presentation" layer, where UI-specific logic and styles are managed. It simplifies access to
//    the current theme for widgets in the presentation layer, keeping UI concerns organized and separate from business logic.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Encapsulates theme access in a single, reusable extension, improving readability and reducing
//      boilerplate code across widgets.
//    - **Modularity**: By extending `BuildContext`, it modularizes theme access, making the app's styling system more
//      consistent and maintainable.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: This extension focuses solely on providing convenient access to the
//      current theme, adhering to SRP by keeping theme access logic separate from other widget concerns.
//    - **Open-Closed Principle (OCP)**: New theme-related properties can be added to this extension without modifying
//      existing code, allowing for easy expansion if additional theme access methods are needed.

// 5. Overview Comment:
//
//    // ThemeExtension on BuildContext
//    // This `ThemeExtension` provides a convenient way to access the current `ThemeData` through `BuildContext`,
//    // simplifying theme access in widgets. By centralizing theme access logic, it enhances code readability, supports
//    // SRP and OCP principles, and aligns well with Clean Architecture's Presentation layer.

import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme {
    return Theme.of(this);
  }
}
