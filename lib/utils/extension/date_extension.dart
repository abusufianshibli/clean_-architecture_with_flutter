// 1. Short Description:
//    This `DateTimeExtension` provides utility methods for `DateTime` objects, including formatting dates to strings,
//    calculating duration in days between dates, and checking if two dates are the same.

// 2. Which part of Clean Architecture is this:
//    This fits in the "Presentation" layer as a utility extension to support displaying date information in a formatted
//    way. It enhances readability and consistency in the UI without involving business logic.

// 3. Which part of OOP is this:
//    - **Encapsulation**: Encapsulates common `DateTime` operations within an extension, making the code cleaner and easier to use.
//    - **Modularity**: Provides modular methods for `DateTime` that can be reused across the app, improving maintainability.

// 4. Which principle is followed:
//    - **Single Responsibility Principle (SRP)**: This extension focuses solely on date-related operations, keeping each
//      method's purpose clear and aligned with SRP.
//    - **Open-Closed Principle (OCP)**: New date-related utility methods can be added without modifying existing methods,
//      adhering to OCP.

// 5. Overview Comment:
//
//    // DateTimeExtension
//    // This `DateTimeExtension` adds utility methods to `DateTime`, such as date formatting, calculating days difference,
//    // and checking date equality. It follows SRP and OCP principles by encapsulating date operations in one place,
//    // enhancing readability and reusability within the Presentation layer.

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String _defaultFormat = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  /// Default format 'dd/MM/yyyy'
  String format([
    String pattern = _defaultFormat,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }

  /// Return duration as days
  int getDuration(DateTime? date) {
    if (date == null) return 0;
    Duration duration = difference(date);
    return duration.inDays + 1;
  }

  bool isSameDate(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }
}
