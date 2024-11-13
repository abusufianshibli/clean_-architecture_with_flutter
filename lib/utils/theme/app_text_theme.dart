// 1. Short Description:
//    `AppTextTheme` defines the text styles for the app, utilizing `GoogleFonts.lato` with custom configurations for each
//    text type (e.g., headlines, titles, body, labels), ensuring a consistent text appearance throughout the application.

// 2. Which part of Clean Architecture is this:
//    This is part of the "Presentation" layer, providing styling for UI elements and centralizing text theme management.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Groups and encapsulates all the text styles for easy access and reuse across the app.
//    - **Modularity**: Keeps text styling separate from other parts of the application, allowing changes without impacting
//      other code.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: Focuses on defining text styles, separated from other aspects of the UI.
//    - **Open-Closed Principle (OCP)**: Styles can be extended or modified for new themes without altering the existing
//      definitions.

// 5. Overview Comment:
//
//    // AppTextTheme Configuration
//    // `AppTextTheme` centralizes text style configurations for the app, defining different text styles with `GoogleFonts.lato`
//    // to ensure uniform typography. It follows SRP by focusing solely on text appearance, making it easy to extend or
//    // modify for alternative themes, contributing to UI consistency and maintainability.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTextTheme {
  static final lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.lato().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColor.textColor,
    ),
    headlineMedium: GoogleFonts.lato().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColor.textColor,
    ),
    headlineSmall: GoogleFonts.lato().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColor.textColor,
    ),
    titleLarge: GoogleFonts.lato().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppColor.textColor,
    ),
    titleMedium: GoogleFonts.lato().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppColor.textColor,
    ),
    titleSmall: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.textColor,
    ),
    bodyLarge: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.textColor,
    ),
    bodyMedium: GoogleFonts.lato().copyWith(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: AppColor.textColor,
    ),
    bodySmall: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColor.textColor,
    ),
    labelLarge: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColor.textColor,
    ),
    labelMedium: GoogleFonts.lato().copyWith(
      fontSize: 11,
      fontWeight: FontWeight.normal,
      color: AppColor.textColor,
    ),
    labelSmall: GoogleFonts.lato().copyWith(
      fontSize: 8,
      fontWeight: FontWeight.normal,
      color: AppColor.textColor,
    ),
  );
}
