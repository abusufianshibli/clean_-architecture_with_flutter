// 1. Short Description:
//    `CustomToast` provides a customizable toast notification system for displaying feedback messages to users,
//    with different types such as success, error, and warning.

// 2. Which part of Clean Architecture is this:
//    This belongs to the **Presentation** layer, where it serves as a UI component for showing user-facing messages and notifications.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Encapsulates the toast display logic within a single class, keeping it modular and reusable across the application.
//    - **Modularity**: Isolates the toast notification functionality from other UI components, allowing for independent use and easy adjustments.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: The class is solely responsible for handling toast notifications, making it easier to manage.
//    - **Open/Closed Principle (OCP)**: By leveraging `ToastType`, it can be extended to support additional types of toasts without modifying the core logic.

// 5. Overview Comment:
//
//    // CustomToast Class
//    // `CustomToast` provides a flexible toast notification system for the app, allowing developers to display various
//    // types of messages (success, error, warning) with custom styling. The design follows SRP by focusing solely on
//    // displaying notifications, and uses OCP to allow easy addition of new toast types.

import 'package:flutter/material.dart';

import '../enum/toast_type.dart';

class CustomToast {
  static void clear(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
  }

  static void show(
    BuildContext context, {
    required ToastType type,
    String? title,
    required String msg,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 6.0,
        backgroundColor: type.color,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        content: Row(
          children: [
            Icon(
              type.icon,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? type.defaultTitle,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      msg,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
