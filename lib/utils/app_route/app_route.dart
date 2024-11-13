// 1. Short Description:
//    This `AppRouter` class defines the routing configuration for the application using `auto_route`. It specifies routes
//    and page mappings, such as the splash and login routes, and sets up an initial route for navigation.

// 2. Which part of Clean Architecture is this:
//    This class belongs to the "Presentation" layer in Clean Architecture. It handles routing and navigation, which are
//    presentation concerns that support user interface management without impacting core business logic.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Encapsulates the application's routing logic within a dedicated class, keeping navigation
//      management modular and organized.
//    - **Abstraction**: Provides a high-level abstraction over route paths and pages, simplifying routing management
//      in the app and abstracting away URL paths behind named routes.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: The `AppRouter` class is solely responsible for managing route configurations,
//      following SRP by keeping routing logic separate from business and UI logic.
//    - **Open-Closed Principle (OCP)**: The configuration is open to new route additions without altering existing route definitions.

// 5. Overview Comment:
//
//    // AppRouter Class
//    // The `AppRouter` class configures application routes using the `auto_route` package. By defining route paths and page mappings,
//    // it centralizes navigation configuration in one place, making route management modular, organized, and adhering to SRP
//    // and OCP principles. This approach keeps routing concerns in the Presentation layer, aligning with Clean Architecture.


import 'package:auto_route/auto_route.dart';

import 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  static const String splash = '/splash';
  static const String login = '/login';

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: splash, page: SplashRoute.page, initial: true),
        AutoRoute(path: login, page: LoginRoute.page),
      ];
}
