import 'package:applover/presentation/success_page/success_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:applover/presentation/login_page/login_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: LoginPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 200,
      reverseDurationInMilliseconds: 200,
      initial: true,
    ),
    CustomRoute(
      page: SuccessPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 200,
      reverseDurationInMilliseconds: 200,
    ),
  ],
)
class $MainRouter {}
