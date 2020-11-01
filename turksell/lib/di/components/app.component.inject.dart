import 'app.component.dart' as _i1;
import '../../module_localization/service/localization_service/localization_service.dart'
    as _i2;
import 'dart:async' as _i3;
import '../../main.dart' as _i4;
import '../../module_localization/presistance/localization_preferences_helper/localization_preferences_helper.dart'
    as _i5;
import '../../module_theme/service/theme_service/theme_service.dart' as _i6;
import '../../module_theme/pressistance/theme_preferences_helper.dart' as _i7;
import '../../anime_auth/auth_module.dart' as _i8;
import '../../anime_auth/ui/screen/sign_up/sign_up.dart' as _i9;
import '../../anime_auth/style_auth.dart' as _i10;
import '../../anime_auth/ui/screen/sign_in/sign_in.dart' as _i11;
import '../../anime_auth/ui/screen/sign_in_t/sign_in_t.dart' as _i12;
import '../../anime_auth/ui/screen/create_accont/create_account.dart' as _i13;
import '../../details_module/details_module.dart' as _i14;
import '../../details_module/car_details/ui/car_details.dart' as _i15;
import '../../home_list/home_list_module.dart' as _i16;
import '../../home_list/ui/screen/home_list.dart' as _i17;
import '../../home_with_navigation_bottom/home_with_navigation_bottom.dart'
    as _i18;
import '../../anime_auth/account_page/account_module.dart' as _i19;
import '../../anime_auth/account_page/ui/screen/account_page.dart' as _i20;
import '../../notification_turkish/notification_turkish_module.dart' as _i21;
import '../../notification_turkish/ui/screen/notification_turkish_page.dart'
    as _i22;
import '../../history_page/notification_turkish_module.dart' as _i23;
import '../../history_page/ui/screen/history_list_page.dart' as _i24;

class AppComponent$Injector implements _i1.AppComponent {
  AppComponent$Injector._();

  _i2.LocalizationService _singletonLocalizationService;

  static _i3.Future<_i1.AppComponent> create() async {
    final injector = AppComponent$Injector._();

    return injector;
  }

  _i4.MyApp _createMyApp() => _i4.MyApp(
      _createLocalizationService(),
      _createSwapThemeDataService(),
      _createAuthModuleAnime(),
      _createDetailsModule(),
      _createHomeListModule(),
      _createAccountModule(),
      _createNotificationTurkishModule(),
      _createHistoryModule());
  _i2.LocalizationService _createLocalizationService() =>
      _singletonLocalizationService ??=
          _i2.LocalizationService(_createLocalizationPreferencesHelper());
  _i5.LocalizationPreferencesHelper _createLocalizationPreferencesHelper() =>
      _i5.LocalizationPreferencesHelper();
  _i6.SwapThemeDataService _createSwapThemeDataService() =>
      _i6.SwapThemeDataService(_createThemePreferencesHelper());
  _i7.ThemePreferencesHelper _createThemePreferencesHelper() =>
      _i7.ThemePreferencesHelper();
  _i8.AuthModuleAnime _createAuthModuleAnime() => _i8.AuthModuleAnime(
      _createSignUp(),
      _createSignIn(),
      _createSignInT(),
      _createCreateAccountPage());
  _i9.SignUp _createSignUp() => _i9.SignUp(_createStyleAuth());
  _i10.StyleAuth _createStyleAuth() => _i10.StyleAuth();
  _i11.SignIn _createSignIn() => _i11.SignIn(_createStyleAuth());
  _i12.SignInT _createSignInT() => _i12.SignInT();
  _i13.CreateAccountPage _createCreateAccountPage() => _i13.CreateAccountPage();
  _i14.DetailsModule _createDetailsModule() =>
      _i14.DetailsModule(_createCarDetails());
  _i15.CarDetails _createCarDetails() => _i15.CarDetails();
  _i16.HomeListModule _createHomeListModule() =>
      _i16.HomeListModule(_createHomeList(), _createHomeWithNavigationButtom());
  _i17.HomeList _createHomeList() => _i17.HomeList();
  _i18.HomeWithNavigationButtom _createHomeWithNavigationButtom() =>
      _i18.HomeWithNavigationButtom();
  _i19.AccountModule _createAccountModule() =>
      _i19.AccountModule(_createAccountPage());
  _i20.AccountPage _createAccountPage() => _i20.AccountPage();
  _i21.NotificationTurkishModule _createNotificationTurkishModule() =>
      _i21.NotificationTurkishModule(_createNotificationTurkishPage());
  _i22.NotificationTurkishPage _createNotificationTurkishPage() =>
      _i22.NotificationTurkishPage();
  _i23.HistoryModule _createHistoryModule() =>
      _i23.HistoryModule(_createHistoryListPage());
  _i24.HistoryListPage _createHistoryListPage() => _i24.HistoryListPage();
  @override
  _i4.MyApp get app => _createMyApp();
}
