

import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/turkish_auth/ui/screen/create_accont/create_account.dart';

import 'package:turksell/turkish_auth/ui/screen/sign_in_turkish/sign_in_turkish.dart';



import 'auth_routes.dart';


@provide
 class AuthModuleAnime extends YesModule{

 final SignInTurkish _signInTurkish;
 final CreateAccountPage _accountPage;
 AuthModuleAnime(this._signInTurkish,this._accountPage);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {

     AuthRoutesAnime.ROUTE_Sign_in_turkish : (context)=> _signInTurkish,
     AuthRoutesAnime.ROUTE_CREATE_ACCOUNT : (context)=> _accountPage,
    };
  }
 }