// 1. Short Description:
//    This `lightTheme` defines a custom `ThemeData` for a Flutter app's light mode, specifying colors, text styles, and
//    widget themes for consistent UI styling.

// 2. Which part of Clean Architecture is this:
//    This is part of the "Presentation" layer, focusing on UI design elements. It helps centralize the styling of the
//    application's appearance in a maintainable and consistent manner.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Encapsulates all style-related properties for the light theme, making it reusable and easy to
//      manage.
//    - **Modularity**: Modularizes the design settings, allowing the app to switch themes by applying different `ThemeData`
//      objects without changing individual widget styles across the app.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: The theme configuration focuses on styling, separated from the business
//      or UI logic.
//    - **Open-Closed Principle (OCP)**: The theme can be extended with additional customization or swapped without modifying
//      existing code in the app’s UI components.

// 5. Overview Comment:
//
//    // lightTheme Configuration
//    // This `lightTheme` provides a centralized theme definition for light mode, applying specific color schemes, text
//    // styles, and widget styles. It follows SRP by isolating the UI design configuration and adheres to OCP by allowing
//    // the app to expand or replace themes as needed, enhancing UI consistency and maintainability.

import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_text_theme.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.lightGrey,
  colorScheme: ColorScheme(
    primary: AppColor.primary,
    onPrimary: Colors.white,
    secondary: AppColor.secondary,
    onSecondary: AppColor.secondary,
    surface: Colors.white,
    onSurface: Colors.black,
    error: AppColor.error,
    onError: AppColor.error,
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.white,
  ),
  datePickerTheme: const DatePickerThemeData().copyWith(
    headerBackgroundColor: AppColor.primary,
    headerForegroundColor: Colors.white,
    dividerColor: Colors.white,
  ),
  textTheme: AppTextTheme.lightTextTheme,
);
