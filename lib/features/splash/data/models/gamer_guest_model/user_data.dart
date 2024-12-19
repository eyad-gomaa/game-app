import 'package:hive_flutter/adapters.dart';
import 'country.dart';
part '../../../../../core/utils/models/adapters/user_data.g.dart';

@HiveType(typeId: 0)
class UserData extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? fullName;

  @HiveField(2)
  String? firstName;

  @HiveField(3)
  int? lastName;

  @HiveField(4)
  dynamic bio;

  @HiveField(5)
  String? username;

  @HiveField(6)
  dynamic birthdate;

  @HiveField(7)
  dynamic email;

  @HiveField(8)
  String? role;

  @HiveField(9)
  int? level;

  @HiveField(10)
  String? profileImg;

  @HiveField(11)
  int? points;

  @HiveField(12)
  dynamic gender;

  @HiveField(13)
  DateTime? lastActive;

  @HiveField(14)
  String? lang;

  @HiveField(15)
  int? zoneDiamond;

  @HiveField(16)
  String? gameLogs;

  @HiveField(17)
  String? rateWin;

  @HiveField(18)
  dynamic gameNum;

  @HiveField(19)
  int? wallet;

  @HiveField(20)
  int? diamond;

  @HiveField(21)
  int? gold;

  @HiveField(22)
  GamerGuestCountry? country;

  UserData({
    this.id,
    this.fullName,
    this.firstName,
    this.lastName,
    this.bio,
    this.username,
    this.birthdate,
    this.email,
    this.role,
    this.level,
    this.profileImg,
    this.points,
    this.gender,
    this.lastActive,
    this.lang,
    this.zoneDiamond,
    this.gameLogs,
    this.rateWin,
    this.gameNum,
    this.wallet,
    this.diamond,
    this.gold,
    this.country,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json['id'] as int?,
        fullName: json['full_name'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as int?,
        bio: json['bio'] as dynamic,
        username: json['username'] as String?,
        birthdate: json['birthdate'] as dynamic,
        email: json['email'] as dynamic,
        role: json['role'] as String?,
        level: json['level'] as int?,
        profileImg: json['profile_img'] as String?,
        points: json['points'] as int?,
        gender: json['gender'] as dynamic,
        lastActive: json['last_active'] == null
            ? null
            : DateTime.parse(json['last_active'] as String),
        lang: json['lang'] as String?,
        zoneDiamond: json['zone_diamond'] as int?,
        gameLogs: json['game_logs'] as String?,
        rateWin: json['rate_win'] as String?,
        gameNum: json['game_num'] as dynamic,
        wallet: json['wallet'] as int?,
        diamond: json['diamond'] as int?,
        gold: json['gold'] as int?,
        country: json['country'] == null
            ? null
            : GamerGuestCountry.fromJson(
                json['country'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'full_name': fullName,
        'first_name': firstName,
        'last_name': lastName,
        'bio': bio,
        'username': username,
        'birthdate': birthdate,
        'email': email,
        'role': role,
        'level': level,
        'profile_img': profileImg,
        'points': points,
        'gender': gender,
        'last_active': lastActive?.toIso8601String(),
        'lang': lang,
        'zone_diamond': zoneDiamond,
        'game_logs': gameLogs,
        'rate_win': rateWin,
        'game_num': gameNum,
        'wallet': wallet,
        'diamond': diamond,
        'gold': gold,
        'country': country?.toJson(),
      };
}
