import 'package:auto_route/auto_route.dart';
import 'package:applover/extensions/extension_mixin.dart';
import 'package:applover/l10n/l10n_model.dart';
import 'package:applover/presentation/routing/router.gr.dart';
import 'package:applover/style/app_typography.dart';
import 'package:applover/style/themes.dart';
import 'package:applover/utils/hide_keyboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:applover/generated/l10n.dart';

const _tabletSize = Size(750, 1334);
const _mobileSize = Size(375, 667);

class MyApp extends StatelessWidget with ExtensionMixin {
  final MainRouter mainRouter;

  const MyApp(this.mainRouter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var designSize = _tabletSize;
    if (!kIsWeb) {
      designSize = Device.get().isTablet ? _tabletSize : _mobileSize;
    }

    return _globalUnfocusKeyboard(
      context: context,
      child: ScreenUtilInit(
        designSize: designSize,
        builder: () => ChangeNotifierProvider(
          create: (_) => L10nModel(),
          child: MultiProvider(
            providers: [ListenableProvider(create: (_) => ThemeModel())],
            child: Consumer<L10nModel>(
              builder: (context, model, child) => MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerDelegate: mainRouter.delegate(
                  navigatorObservers: () =>
                      AutoRouterDelegate.defaultNavigatorObserversBuilder(),
                ),
                routeInformationParser: mainRouter.defaultRouteParser(),
                theme: ThemeData(
                  fontFamily: AppTypography.fontFamily,
                ),
                localizationsDelegates: const [
                  Strings.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: Locale(model.preferredLanguageCode),
                supportedLocales: [
                  Locale(englishLanguageCode.value),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _globalUnfocusKeyboard({
    required BuildContext context,
    required Widget child,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => hideKeyboard(context),
        child: child,
      );
}
