import 'package:applover/mobile_app.dart';
import 'package:injectable/injectable.dart';

void main() => _runApp();

Future<void> _runApp() async => await runMobileApp(Environment.prod);
