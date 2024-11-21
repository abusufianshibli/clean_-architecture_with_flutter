/// Short Description:
/// This widget represents a simple "No Internet" UI, displayed when the
/// app detects that there is no internet connection. It provides a clear
/// and user-friendly message to the user.
///
/// Which part of Clean Architecture is this:
/// This belongs to the **Presentation Layer** of Clean Architecture.
/// It handles the UI logic for notifying the user about the absence
/// of an internet connection.
///
/// /// Overview Comment:
// /// The `NoInternet` widget provides a centralized, reusable UI for handling
// /// no internet connection scenarios. It leverages the theme from the
// /// application context for consistent styling and allows for future
// /// extension with additional elements such as images or retry buttons.

import 'package:benchmark_project/utils/extension/theme_extension.dart';
import 'package:flutter/cupertino.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Assets.icons.noInternet.image(
          //   height: 200,
          //   width: 200,
          // ),
          const SizedBox(height: 32),
          Text(
            'Check your internet connection',
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
