// 1. **Short Description**:
//    The `SplashScreen` widget checks for an internet connection upon initialization. If the device is not connected to the internet,
//    it displays a "No Internet" message using the `NoInternet` widget. Otherwise, it shows a loading indicator as a splash screen.

// 2. **Which part of Clean Architecture is this?**
//    - **Presentation Layer**: This is part of the Presentation layer in Clean Architecture. The `SplashScreen` widget manages UI and user interactions
//      related to connectivity status and transitions.

// 3. **Which part of OOP is this?**
//    - **Encapsulation**: The connectivity check and the UI elements are encapsulated within the `SplashScreen` widget. The widget manages its own state
//      and handles the connection logic internally, keeping the details hidden from the outside.

// 4. **Which SOLID Principle is followed?**
//    - **Single Responsibility Principle (SRP)**: The `SplashScreen` widget has a single responsibility of checking connectivity and showing the appropriate UI
//      (either a loading screen or a no-internet screen).
//    - **Open-Closed Principle (OCP)**: The widget is open for extension, such as adding more checks or logic related to the splash screen, but its core functionality
//      does not need to be modified.

// 5. **Overview Comment**:
//    The `SplashScreen` widget is responsible for managing the splash screen UI, checking for connectivity, and displaying appropriate messages.
//    It encapsulates the logic related to connectivity status, making the code modular and easy to extend. The widget is designed to handle connectivity
//    changes dynamically, enhancing user experience by providing real-time feedback.

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../domain/util/result.dart';
import '../../../utils/theme/app_color.dart';
import '../../widgets/no_internet.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Result>? _future;
  final Connectivity _connectivity = Connectivity();
  bool isConnected = true;
  StreamSubscription<List<ConnectivityResult>>? subscription;

  @override
  void initState() {
    _checkConnectivity();
    super.initState();
  }

  @override
  dispose() {
    subscription?.cancel();
    super.dispose();
  }

  Future<void> _listenConnectivity() async {
    subscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectivityStatus);
  }

  Future<void> _checkConnectivity() async {
    final result = await _connectivity.checkConnectivity();
    isConnected = result.any(
      (element) =>
          element == ConnectivityResult.mobile ||
          element == ConnectivityResult.wifi,
    );

    if (isConnected) {
      // checkToken();
    } else {
      _listenConnectivity();
    }
  }

  void _updateConnectivityStatus(List<ConnectivityResult> result) {
    setState(() {
      isConnected = result.any(
        (element) =>
            element == ConnectivityResult.mobile ||
            element == ConnectivityResult.wifi,
      );
    });
    // if (isConnected) checkToken();
  }

  // void checkToken() async {
  //   _future = context.read<ProfileProvider>().getUserInfo();
  //   final result = await _future;
  //   result!.whenOrNull(
  //     success: (value) {
  //       context.router.replaceAll([
  //         const MainRoute(),
  //       ]);
  //     },
  //     failure: (failure) {
  //       failure.maybeWhen(
  //         socketException: (message, statusCode) {
  //           setState(() {
  //             isConnected = false;
  //           });
  //         },
  //         orElse: () {
  //           context.read<AuthProvider>().removeSession();
  //           context.router.replaceAll([
  //             const LoginRoute(),
  //           ]);
  //         },
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isConnected
          ? const NoInternet()
          : Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColor.primary, AppColor.primary],
                ),
              ),
              child: const SafeArea(
                child: Stack(
                  children: [
                    // Center(
                    //   child: Assets.logo.ptslText.image(
                    //     width: double.infinity,
                    //   ),
                    // ),
                    Positioned(
                      bottom: 32,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
