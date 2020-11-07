import 'app.component.dart' as _i1;
import '../../module_localization/service/localization_service/localization_service.dart'
    as _i2;
import 'dart:async' as _i3;
import '../../main.dart' as _i4;
import '../../module_localization/presistance/localization_preferences_helper/localization_preferences_helper.dart'
    as _i5;
import '../../module_theme/service/theme_service/theme_service.dart' as _i6;
import '../../module_theme/pressistance/theme_preferences_helper.dart' as _i7;
import '../../turkish_auth/auth_module.dart' as _i8;
import '../../turkish_auth/ui/screen/sign_in_turkish/sign_in_turkish.dart'
    as _i9;
import '../../turkish_auth/ui/screen/create_accont/create_account.dart' as _i10;
import '../../details_module/details_module.dart' as _i11;
import '../../details_module/car_details/ui/car_details.dart' as _i12;
import '../../home_list/home_list_module.dart' as _i13;
import '../../home_list/ui/screen/home_list.dart' as _i14;
import '../../home_with_navigation_bottom/home_with_navigation_bottom.dart'
    as _i15;
import '../../turkish_auth/account_page/account_module.dart' as _i16;
import '../../turkish_auth/account_page/ui/screen/account_page.dart' as _i17;
import '../../notification_turkish/notification_turkish_module.dart' as _i18;
import '../../notification_turkish/ui/screen/notification_turkish_page.dart'
    as _i19;
import '../../history_page/notification_turkish_module.dart' as _i20;
import '../../history_page/ui/screen/history_list_page.dart' as _i21;
import '../../setting_module/setting_module.dart' as _i22;
import '../../setting_module/ui/setting_page.dart' as _i23;
import '../../list_wtih_option/list_wtih_option_module.dart' as _i24;
import '../../list_wtih_option/ui/screen/list_with_option.dart' as _i25;

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
      _createHistoryModule(),
      _createSettingModule(),
      _createListWithOptionModel());
  _i2.LocalizationService _createLocalizationService() =>
      _singletonLocalizationService ??=
          _i2.LocalizationService(_createLocalizationPreferencesHelper());
  _i5.LocalizationPreferencesHelper _createLocalizationPreferencesHelper() =>
      _i5.LocalizationPreferencesHelper();
  _i6.SwapThemeDataService _createSwapThemeDataService() =>
      _i6.SwapThemeDataService(_createThemePreferencesHelper());
  _i7.ThemePreferencesHelper _createThemePreferencesHelper() =>
      _i7.ThemePreferencesHelper();
  _i8.AuthModuleAnime _createAuthModuleAnime() =>
      _i8.AuthModuleAnime(_createSignInTurkish(), _createCreateAccountPage());
  _i9.SignInTurkish _createSignInTurkish() => _i9.SignInTurkish();
  _i10.CreateAccountPage _createCreateAccountPage() => _i10.CreateAccountPage();
  _i11.DetailsModule _createDetailsModule() =>
      _i11.DetailsModule(_createCarDetails());
  _i12.CarDetails _createCarDetails() => _i12.CarDetails();
  _i13.HomeListModule _createHomeListModule() =>
      _i13.HomeListModule(_createHomeList(), _createHomeWithNavigationButtom());
  _i14.HomeList _createHomeList() => _i14.HomeList();
  _i15.HomeWithNavigationButtom _createHomeWithNavigationButtom() =>
      _i15.HomeWithNavigationButtom();
  _i16.AccountModule _createAccountModule() =>
      _i16.AccountModule(_createAccountPage());
  _i17.AccountPage _createAccountPage() => _i17.AccountPage();
  _i18.NotificationTurkishModule _createNotificationTurkishModule() =>
      _i18.NotificationTurkishModule(_createNotificationTurkishPage());
  _i19.NotificationTurkishPage _createNotificationTurkishPage() =>
      _i19.NotificationTurkishPage();
  _i20.HistoryModule _createHistoryModule() =>
      _i20.HistoryModule(_createHistoryListPage());
  _i21.HistoryListPage _createHistoryListPage() => _i21.HistoryListPage();
  _i22.SettingModule _createSettingModule() =>
      _i22.SettingModule(_createSettingPage());
  _i23.SettingPage _createSettingPage() => _i23.SettingPage();
  _i24.ListWithOptionModel _createListWithOptionModel() =>
      _i24.ListWithOptionModel(_createListWithOptionPage());
  _i25.ListWithOptionPage _createListWithOptionPage() =>
      _i25.ListWithOptionPage();
  @override
  _i4.MyApp get app => _createMyApp();
}
