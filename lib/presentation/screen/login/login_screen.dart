/// 1. **Short Description**
///    - `LoginScreen` is a stateful widget that represents the user login interface, providing a form for user input and a scaffold for UI layout.
///
/// 2. **Which part of Clean Architecture is this**
///    - This belongs to the **Presentation Layer**, acting as the UI where user interactions are initiated.
///
/// 3. **Which part of OOP is this**
///    - **Encapsulation:** The widget encapsulates UI elements and their behaviors (e.g., form validation) within a single component.
///    - **Inheritance:** It uses `StatefulWidget` and `State` to build a reactive UI structure.
///
/// 4. **Which principle followed**
///    - **Single Responsibility Principle (SRP):** The widget is responsible for rendering and managing the login view only.
///    - **Separation of Concerns:** Keeps the UI logic (validation, user input) separate from business and domain layers.
///
/// 5. **An overview comment**
///    - The `LoginScreen` is designed with simplicity and scalability in mind, acting as the starting point for user authentication.
///    It uses a form widget to handle user input and validation. The structure adheres to Clean Architecture principles, ensuring that business logic remains separate from UI elements.
///    The use of `theme` extension improves maintainability by enforcing consistent design across the application.


import 'package:auto_route/auto_route.dart';
import 'package:benchmark_project/utils/extension/theme_extension.dart';
import 'package:flutter/material.dart';

import '../../../domain/util/result.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<Result>? _future;


  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Login View"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
