// 1. Short Description:
//    This `ToastType` enum defines different types of toast notifications (success, error, and warning) with associated properties
//    like color, icon, and default title for each type, enabling consistent and customizable toasts across the app.

// 2. Which part of Clean Architecture is this:
//    This configuration fits within the "Presentation" layer, where UI-specific details are managed. It provides a reusable way
//    to handle notification styles, enhancing UI consistency without impacting other layers.

// 3. Which part of OOP is this:
//    - **Encapsulation**: By defining properties directly in each enum entry, it encapsulates the configuration details for
//      each toast type, making the code cleaner and easier to use.
//    - **Polymorphism**: Each enum entry can be treated as a `ToastType`, allowing consistent access to properties like color,
//      icon, and title for any toast type without knowing the specifics.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: The `ToastType` enum is solely responsible for defining the appearance
//      and default values of various toast types, maintaining separation from the logic that displays these toasts.
//    - **Open-Closed Principle (OCP)**: New toast types can be added to the enum without modifying existing toast configurations.

// 5. Overview Comment:
//
//    // ToastType Enum
//    // The `ToastType` enum defines types of toast notifications with associated properties (color, icon, and default title)
//    // for each type (success, error, warning). This configuration follows SRP and OCP by keeping toast style information
//    // organized in one place, facilitating easy additions and consistent UI usage in the Presentation layer.

import 'package:flutter/material.dart';

enum ToastType {
  success(
    color: Colors.green,
    icon: Icons.done,
    defaultTitle: 'Success',
  ),
  error(
    color: Colors.red,
    icon: Icons.error,
    defaultTitle: 'Error',
  ),
  warning(
    color: Colors.amber,
    icon: Icons.warning,
    defaultTitle: 'Warning',
  );

  const ToastType({
    required this.color,
    required this.icon,
    required this.defaultTitle,
  });

  final IconData icon;
  final Color color;
  final String defaultTitle;
}
