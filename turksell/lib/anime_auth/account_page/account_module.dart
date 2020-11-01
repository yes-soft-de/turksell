import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/anime_auth/account_page/ui/screen/account_page.dart';

import 'account_routes.dart';

@provide
class AccountModule extends YesModule{
  final AccountPage _accountPage;

  AccountModule(this._accountPage,);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
      AccountRoutes.ROUTE_Account : (context)=> _accountPage,

    };
  }
}