// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Enable Audio:`
  String get enableAudio {
    return Intl.message(
      'Enable Audio:',
      name: 'enableAudio',
      desc: '',
      args: [],
    );
  }

  /// `No camera found`
  String get noCameraFound {
    return Intl.message(
      'No camera found',
      name: 'noCameraFound',
      desc: '',
      args: [],
    );
  }

  /// `Error Loading Items!`
  String get errorLoadingItems {
    return Intl.message(
      'Error Loading Items!',
      name: 'errorLoadingItems',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Games List`
  String get gamesList {
    return Intl.message(
      'Games List',
      name: 'gamesList',
      desc: '',
      args: [],
    );
  }

  /// `Request a Swap!`
  String get requestASwap {
    return Intl.message(
      'Request a Swap!',
      name: 'requestASwap',
      desc: '',
      args: [],
    );
  }

  /// `Error Getting Swap Item id!`
  String get errorGettingSwapItemId {
    return Intl.message(
      'Error Getting Swap Item id!',
      name: 'errorGettingSwapItemId',
      desc: '',
      args: [],
    );
  }

  /// `Error Loading Data`
  String get errorLoadingData {
    return Intl.message(
      'Error Loading Data',
      name: 'errorLoadingData',
      desc: '',
      args: [],
    );
  }

  /// `Empty List`
  String get emptyList {
    return Intl.message(
      'Empty List',
      name: 'emptyList',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please Input Phone Number`
  String get pleaseInputPhoneNumber {
    return Intl.message(
      'Please Input Phone Number',
      name: 'pleaseInputPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Loading!`
  String get loading {
    return Intl.message(
      'Loading!',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Send me a Code!`
  String get sendMeACode {
    return Intl.message(
      'Send me a Code!',
      name: 'sendMeACode',
      desc: '',
      args: [],
    );
  }

  /// `Saudi Arabia`
  String get saudiArabia {
    return Intl.message(
      'Saudi Arabia',
      name: 'saudiArabia',
      desc: '',
      args: [],
    );
  }

  /// `USA`
  String get usa {
    return Intl.message(
      'USA',
      name: 'usa',
      desc: '',
      args: [],
    );
  }

  /// `Lebanon`
  String get lebanon {
    return Intl.message(
      'Lebanon',
      name: 'lebanon',
      desc: '',
      args: [],
    );
  }

  /// `Syria`
  String get syria {
    return Intl.message(
      'Syria',
      name: 'syria',
      desc: '',
      args: [],
    );
  }

  /// `Chat Room`
  String get chatRoom {
    return Intl.message(
      'Chat Room',
      name: 'chatRoom',
      desc: '',
      args: [],
    );
  }

  /// `Start Writing`
  String get startWriting {
    return Intl.message(
      'Start Writing',
      name: 'startWriting',
      desc: '',
      args: [],
    );
  }

  /// `Be the First to Comment`
  String get beTheFirstToComment {
    return Intl.message(
      'Be the First to Comment',
      name: 'beTheFirstToComment',
      desc: '',
      args: [],
    );
  }

  /// `Search a Game :)`
  String get searchAGame {
    return Intl.message(
      'Search a Game :)',
      name: 'searchAGame',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `to my collection`
  String get toMyCollection {
    return Intl.message(
      'to my collection',
      name: 'toMyCollection',
      desc: '',
      args: [],
    );
  }

  /// `Please Upload the Image`
  String get pleaseUploadTheImage {
    return Intl.message(
      'Please Upload the Image',
      name: 'pleaseUploadTheImage',
      desc: '',
      args: [],
    );
  }

  /// `Submit Game!`
  String get submitGame {
    return Intl.message(
      'Submit Game!',
      name: 'submitGame',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get uploadImage {
    return Intl.message(
      'Upload Image',
      name: 'uploadImage',
      desc: '',
      args: [],
    );
  }

  /// `Empty Tag List`
  String get emptyTagList {
    return Intl.message(
      'Empty Tag List',
      name: 'emptyTagList',
      desc: '',
      args: [],
    );
  }

  /// `Insert via a Preset`
  String get insertViaAPreset {
    return Intl.message(
      'Insert via a Preset',
      name: 'insertViaAPreset',
      desc: '',
      args: [],
    );
  }

  /// `Insert via Camera`
  String get insertViaCamera {
    return Intl.message(
      'Insert via Camera',
      name: 'insertViaCamera',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Feedback!`
  String get feedback {
    return Intl.message(
      'Feedback!',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get feed {
    return Intl.message(
      'Feed',
      name: 'feed',
      desc: '',
      args: [],
    );
  }

  /// `TOS`
  String get tos {
    return Intl.message(
      'TOS',
      name: 'tos',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Set Exchange Game`
  String get setExchangeGame {
    return Intl.message(
      'Set Exchange Game',
      name: 'setExchangeGame',
      desc: '',
      args: [],
    );
  }

  /// `Start Chat`
  String get startChat {
    return Intl.message(
      'Start Chat',
      name: 'startChat',
      desc: '',
      args: [],
    );
  }

  /// `Set Game`
  String get setGame {
    return Intl.message(
      'Set Game',
      name: 'setGame',
      desc: '',
      args: [],
    );
  }

  /// `Username:`
  String get username {
    return Intl.message(
      'Username:',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Not Logged in!`
  String get notLoggedIn {
    return Intl.message(
      'Not Logged in!',
      name: 'notLoggedIn',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Empty Comment!`
  String get emptyComment {
    return Intl.message(
      'Empty Comment!',
      name: 'emptyComment',
      desc: '',
      args: [],
    );
  }

  /// `Save Profile`
  String get saveProfile {
    return Intl.message(
      'Save Profile',
      name: 'saveProfile',
      desc: '',
      args: [],
    );
  }

  /// `Saving!`
  String get saving {
    return Intl.message(
      'Saving!',
      name: 'saving',
      desc: '',
      args: [],
    );
  }

  /// `Please Provide a short story about you :)`
  String get pleaseProvideAShortStoryAboutYou {
    return Intl.message(
      'Please Provide a short story about you :)',
      name: 'pleaseProvideAShortStoryAboutYou',
      desc: '',
      args: [],
    );
  }

  /// `Please Provide your Name :)`
  String get pleaseProvideYourName {
    return Intl.message(
      'Please Provide your Name :)',
      name: 'pleaseProvideYourName',
      desc: '',
      args: [],
    );
  }

  /// `Please Upload your Image :)`
  String get pleaseUploadYourImage {
    return Intl.message(
      'Please Upload your Image :)',
      name: 'pleaseUploadYourImage',
      desc: '',
      args: [],
    );
  }

  /// `Uploading`
  String get uploading {
    return Intl.message(
      'Uploading',
      name: 'uploading',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `This Game is Great`
  String get thisGameIsGreat {
    return Intl.message(
      'This Game is Great',
      name: 'thisGameIsGreat',
      desc: '',
      args: [],
    );
  }

  /// `movie 1`
  String get movie1 {
    return Intl.message(
      'movie 1',
      name: 'movie1',
      desc: '',
      args: [],
    );
  }

  /// `mmmmmm`
  String get mmmmmm {
    return Intl.message(
      'mmmmmm',
      name: 'mmmmmm',
      desc: '',
      args: [],
    );
  }

  /// `المسلسلات الموصى بها عالميا`
  String get series_international {
    return Intl.message(
      'المسلسلات الموصى بها عالميا',
      name: 'series_international',
      desc: '',
      args: [],
    );
  }

  /// `المسلسلات الموصى بها حسب تفضيلاتك`
  String get series_favorite {
    return Intl.message(
      'المسلسلات الموصى بها حسب تفضيلاتك',
      name: 'series_favorite',
      desc: '',
      args: [],
    );
  }

  /// `اعضاء نشطين`
  String get active_members {
    return Intl.message(
      'اعضاء نشطين',
      name: 'active_members',
      desc: '',
      args: [],
    );
  }

  /// `الاعدادات العامة`
  String get general_setting {
    return Intl.message(
      'الاعدادات العامة',
      name: 'general_setting',
      desc: '',
      args: [],
    );
  }

  /// `الحساب`
  String get accounts {
    return Intl.message(
      'الحساب',
      name: 'accounts',
      desc: '',
      args: [],
    );
  }

  /// `الخصوصية`
  String get privacy {
    return Intl.message(
      'الخصوصية',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `الاسم`
  String get name {
    return Intl.message(
      'الاسم',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `الايميل`
  String get email {
    return Intl.message(
      'الايميل',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `كلمة مرور`
  String get password {
    return Intl.message(
      'كلمة مرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}