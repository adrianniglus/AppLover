import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:applover/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies(String environment) async {
  await $initGetIt(getIt, environment: environment);
}
