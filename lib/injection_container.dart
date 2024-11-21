import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

/// Short Description:
/// This code sets up dependency injection using the `injectable` and `get_it`
/// packages to manage the application's dependencies efficiently.
///
/// Which part of Clean Architecture is this:
/// This code belongs to the **Dependency Injection** part of Clean Architecture.
/// It ensures that dependencies are provided to various layers (domain, data, presentation)
/// without tightly coupling the layers together.
///
/// Which part of OOP is this:
/// This is an implementation of **Encapsulation** in OOP. It encapsulates the
/// dependency management logic into a single, reusable service locator.
///
/// Which SOLID principle is followed:
/// - **Dependency Inversion Principle (DIP)**: High-level modules depend on abstractions
///   rather than concrete implementations. This allows for flexible dependency swapping.
/// - **Single Responsibility Principle (SRP)**: The dependency injection logic
///   is encapsulated within this module, ensuring focused functionality.
///
/// Overview Comment:
/// This code initializes the `GetIt` service locator using `injectable`.
/// It facilitates automatic dependency injection by generating the necessary
/// code for registering and resolving dependencies through annotations.
/// This ensures loose coupling, enhances testability, and allows for scalability
/// by abstracting dependency management logic.

@InjectableInit(
  initializerName: 'init', // Specifies the initializer name for generated code
  preferRelativeImports: true, // Ensures relative imports for better code readability
  asExtension: true, // Registers the initialization as an extension on GetIt
)
void configureDependencies(){

}
/// What is Dependency Injection (DI):
/// Dependency Injection (DI) is a design pattern and a core concept in software engineering.
/// It allows a class or component to receive its dependencies from an external source,
/// rather than creating them internally. This ensures better modularity, scalability,
/// and testability of the code.
///
/// Example: Instead of a class instantiating its dependencies directly, it is provided with
/// pre-configured objects (dependencies) via a constructor, method, or property.
///
/// Benefits of DI:
/// - Promotes loose coupling between components.
/// - Improves code reusability and maintainability.
/// - Enhances testability by allowing dependencies to be mocked or replaced.
/// - Simplifies configuration and reduces redundant object creation.

/// Difference Between Service Locator and Dependency Injection:
///
/// 1. **Service Locator**:
///    - The `GetIt` instance is an example of a Service Locator.
///    - Dependencies are registered in a central location and resolved manually where needed.
///    - Pros: Simple to use, great for small applications or quick prototyping.
///    - Cons: Can lead to tight coupling between the code and the service locator,
///      making testing more challenging and violating Inversion of Control (IoC).
///
/// 2. **Dependency Injection**:
///    - Dependency injection is a broader principle implemented here using `injectable`.
///    - Dependencies are provided automatically to classes, usually through constructors
///      or method parameters, following the Inversion of Control principle.
///    - Pros: Improves testability, enforces clear dependency relationships, and adheres
///      to the Dependency Inversion Principle.
///    - Cons: Requires additional setup and configuration, which can be complex for large projects.
