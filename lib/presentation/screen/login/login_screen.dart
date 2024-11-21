import 'package:auto_route/auto_route.dart';
import 'package:benchmark_project/utils/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
