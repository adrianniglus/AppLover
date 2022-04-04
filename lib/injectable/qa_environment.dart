import 'package:injectable/injectable.dart';

const qa = Environment(QaEnvironment.qa);

class QaEnvironment extends Environment {
  static const qa = 'qa';

  QaEnvironment(String name) : super(name);
}
