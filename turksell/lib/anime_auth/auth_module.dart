

import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/anime_auth/ui/screen/create_accont/create_account.dart';
import 'package:turksell/anime_auth/ui/screen/sign_in/sign_in.dart';
import 'package:turksell/anime_auth/ui/screen/sign_in_t/sign_in_t.dart';
import 'package:turksell/anime_auth/ui/screen/sign_up/sign_up.dart';

import 'auth_routes.dart';


@provide
 class AuthModuleAnime extends YesModule{
 final SignUp _signUp;
 final SignIn _signIn;
 final SignInT _signInT;
 final CreateAccountPage _accountPage;
 AuthModuleAnime(this._signUp,this._signIn,this._signInT,this._accountPage);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
     AuthRoutesAnime.ROUTE_Sign_UP : (context)=> _signUp,
     AuthRoutesAnime.ROUTE_Sign_in : (context)=> _signIn,
     AuthRoutesAnime.ROUTE_Sign_in_t : (context)=> _signInT,
     AuthRoutesAnime.ROUTE_CREATE_ACCOUNT : (context)=> _accountPage,
    };
  }
 }