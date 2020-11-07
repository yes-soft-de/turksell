import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/module_auth/auth_routes.dart';
import 'package:turksell/module_auth/ui/screen/auth_screen/auth_screen.dart';

@provide
class AuthModule extends YesModule {
  final AuthScreen _authScreen;
  AuthModule(this._authScreen);

  @override
  Map<String, WidgetBuilder> getRoutes() {
    return {AuthRoutes.ROUTE_AUTHORIZE: (context) => _authScreen};
  }
}
