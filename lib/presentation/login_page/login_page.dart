import 'package:auto_route/auto_route.dart';
import 'package:applover/injectable/injectable.dart';
import 'package:applover/presentation/login_page/cubit/login_cubit.dart';
import 'package:applover/presentation/login_page/cubit/login_state.dart';
import 'package:applover/presentation/login_page/login_body.dart';
import 'package:applover/presentation/routing/router.gr.dart';
import 'package:applover/utils/do_nothing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<LoginCubit>(
        create: (BuildContext context) => getIt<LoginCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: _listener,
      builder: _builder,
    );
  }

  void _listener(BuildContext context, LoginState state) => state.maybeWhen(
        success: () => AutoRouter.of(context).replace(const SuccessRoute()),
        wrongCredentials: doNothing,
        orElse: doNothing,
      );

  Widget _builder(BuildContext context, LoginState state) => state.maybeWhen(
        show: () => const LoginBody(
          isLoading: false,
          areWrongCredentials: false,
        ),
        loading: () => const LoginBody(
          isLoading: true,
          areWrongCredentials: false,
        ),
        wrongCredentials: () => const LoginBody(
          isLoading: false,
          areWrongCredentials: true,
        ),
        orElse: () => const SizedBox.shrink(),
      );
}
