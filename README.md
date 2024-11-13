# Project Documentation

## Overview

This project leverages **Clean Architecture**, **Object-Oriented Programming (OOP)** principles, **SOLID Principles**, and various **Design Patterns** to create a robust, modular, and maintainable Flutter application. It includes a well-defined structure with separation of concerns between data handling, business logic, and presentation. The primary goal is to enhance code readability, scalability, and testability.

## Core Concepts

### 1. Clean Architecture
Clean Architecture aims to separate an application into layers, ensuring that the core business logic remains independent of framework and implementation details. It typically consists of the following layers:

- **Domain Layer**: The core layer containing the business logic, entities, and use cases. It should be independent of any other layer.
- **Data Layer**: Manages data sources, including API clients, repositories, and data mappers. It handles data retrieval, transformation, and storage.
- **Presentation Layer**: Includes UI components and state management logic. Here, data is displayed to users, and user input is captured.
- **Dependency Injection**: Dependency injection is used to handle dependencies between classes, ensuring separation and enabling testing.

In this project, the **Domain Layer** is encapsulated in a way that isolates core application logic, while **Data** and **Presentation Layers** interact with it through dependency injection. This pattern is maintained using packages like `get_it` and `injectable`.

### 2. Object-Oriented Programming (OOP)
OOP is utilized throughout the project, promoting reusability, modularity, and scalability through four main concepts:

- **Encapsulation**: Data and functions are bound together within classes, hiding implementation details from other parts of the application.
- **Abstraction**: Key behaviors and properties are defined while hiding complex details, enhancing readability and ease of use.
- **Inheritance**: Reusability is achieved by extending classes to create new behaviors without modifying the original class.
- **Polymorphism**: Different classes can be treated as instances of the same class through inheritance, enabling flexible design.

Each component, from network modules to custom exceptions, is implemented with OOP principles to ensure that parts of the application can be updated or replaced with minimal impact on the rest of the code.

### 3. SOLID Principles
The project is designed with SOLID principles to enhance code quality and maintainability:

- **Single Responsibility Principle (SRP)**: Each class has a single responsibility. For instance, `UserInfoUseCase` handles fetching user data while `Failure` is strictly for error management.
- **Open/Closed Principle (OCP)**: Classes are open for extension but closed for modification. The `Failure` class allows for adding new failure types without modifying existing code.
- **Liskov Substitution Principle (LSP)**: Subtypes can replace their parent types without affecting functionality. This project achieves this by using interfaces for repositories and data sources.
- **Interface Segregation Principle (ISP)**: The project defines granular interfaces, ensuring that classes only implement what they need.
- **Dependency Inversion Principle (DIP)**: Higher-level modules depend on abstractions rather than concrete implementations, allowing flexible dependency management and testability.

### 4. Design Patterns
Several design patterns are applied to solve specific issues in a reusable and standardized way:

- **Repository Pattern**: Data handling is abstracted through repositories, which communicate with data sources and map data to entities for the domain layer.
- **Use Case Pattern**: Each use case represents a specific action or functionality in the domain layer, such as `UserInfoUseCase` for fetching user details.
- **Factory Pattern**: Factories are used in the project to manage dependency injection, providing an extensible way to generate instances of required objects.
- **Adapter Pattern**: The project uses mappers to convert data from one format to another, ensuring that each layer works with the data format it expects.
- **Extension Methods**: Extensions in Dart enable adding functionality to existing classes. This project includes extensions for common utility operations, enhancing code readability and modularity.

### Project Structure

The project follows a modular structure adhering to Clean Architecture principles:

```plaintext
lib/
├── core/
│   ├── enums/          # Enums like `ToastType`
│   ├── extensions/     # Extension methods
│   ├── util/           # Utilities, constants, and helpers
├── data/
│   ├── datasource/     # Remote or local data sources
│   ├── repository/     # Repository implementations
│   ├── model/          # Data models and mappers
├── domain/
│   ├── entities/       # Core entities for the business layer
│   ├── usecases/       # Use case classes encapsulating business logic
├── presentation/
│   ├── pages/          # Screens and pages
│   ├── widgets/        # Custom widgets and UI components
│   ├── theme/          # Theme and styling
└── di/                 # Dependency Injection configuration

