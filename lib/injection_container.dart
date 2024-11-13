import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
mixin InjectionContainer {
  static Future<void> configureDependencies() async {
    // getIt.init();
  }
}
