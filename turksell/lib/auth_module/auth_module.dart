

import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/auth_module/sign_in_t/sign_in.dart';
import 'package:turksell/auth_module/sign_up/sign_up.dart';

import 'auth_routes.dart';
import 'create_accont/create_account.dart';


@provide
 class AuthModuleAnime extends YesModule{
 final SignUp _signUp;

 final SignIn _signInT;
 final CreateAccountPage _accountPage;
 AuthModuleAnime(this._signUp,this._signInT,this._accountPage);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
     AuthRoutesAnime.ROUTE_Sign_UP : (context)=> _signUp,
     AuthRoutesAnime.ROUTE_Sign_in_t : (context)=> _signInT,
     AuthRoutesAnime.ROUTE_CREATE_ACCOUNT : (context)=> _accountPage,
    };
  }
 }