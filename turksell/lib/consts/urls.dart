class Urls {
 // static const String BASE_API = 'http://34.70.151.188/html/public/index.php';
  static const String BASE_API = 'http://35.228.13.208';

  static const API_PROFILE = BASE_API + '/userprofile';
  static const API_GAMES = BASE_API + '/swapitem';
  static const API_USER_GAMES = BASE_API + '/swapitembyuserid';
  static const API_GAME_BY_ID = BASE_API + '/swapitembyid';

  static final API_SIGN_UP = BASE_API + '/register';
  static final API_CREATE_TOKEN = BASE_API +'/logen_check';

  static const API_ALL_ANIME=BASE_API+'/anime';
  static const RAWG = 'https://api.rawg.io/api/';
  static const IMGBB = 'https://api.imgbb.com/1/upload';
  static const SEARCH_GAMES_API = RAWG + 'games';
}
