class ApiConstants {
  static const String baseUrl = 'http://192.168.1.41:8000/api/v1/';
  static const String guestRegisterEndpoint = 'gamers/guest';
  static const String gamersDiamondEndpoint = 'gamers/diamond';
  static const String gamersGoldEndpoint = 'gamers/gold';
  static const String gamersHomeEndpoint = 'gamers/home';
  static Map<String, dynamic> headers = {
    'Accept': 'application/json',
  };
}
