// 1. Short Description:
//    `AppColor` centralizes the color palette for the app, providing a single source for all colors used across the UI, ensuring
//    visual consistency.

// 2. Which part of Clean Architecture is this:
//    This is part of the "Presentation" layer, as it deals with styling elements directly related to the UI's appearance.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Encapsulates color values in a single class for easy access and management.
//    - **Modularity**: Separates color definitions from other aspects of the app, which keeps styling organized.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: Focuses exclusively on defining colors for the application, which enhances
//      maintainability and avoids scattering color values across multiple files.

// 5. Overview Comment:
//
//    // AppColor Configuration
//    // `AppColor` provides a centralized color palette, ensuring that color values are consistent and easy to manage.
//    // Following SRP, it maintains a dedicated space for all color definitions, contributing to a cohesive design system
//    // and ease of modification.

import 'package:flutter/material.dart';

class AppColor {
  static Color primary = const Color(0xFF4DB6AC);
  static Color secondary = const Color(0xFFA7A9AC);
  static Color background = const Color(0xFFFAFAFA);
  static Color textColor = const Color(0xFF333333);
  static const Color lightGrey = Color(0xFFFBFBFB);
  static Color card = const Color(0xFFFF6F61);
  static Color divider = const Color(0xFFdedcdc);
  static Color error = Colors.red;
  static Color checkOut = primary;
}
