import 'package:zone_game_app/features/splash/data/models/gamer_guest_model/user_data.dart';

class GamerGuestData {
  String? token;
  UserData? guest;

  GamerGuestData({this.token, this.guest});

  factory GamerGuestData.fromJson(Map<String, dynamic> json) => GamerGuestData(
        token: json['token'] as String?,
        guest: json['guest'] == null
            ? null
            : UserData.fromJson(json['guest'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'guest': guest?.toJson(),
      };
}
