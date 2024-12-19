import 'package:hive_flutter/hive_flutter.dart';

part '../../../../../core/utils/models/adapters/country.g.dart'; // Required for code generation

@HiveType(typeId: 1)
class GamerGuestCountry extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? code;

  @HiveField(2)
  String? name;

  @HiveField(3)
  String? img;

  GamerGuestCountry({this.id, this.code, this.name, this.img});

  factory GamerGuestCountry.fromJson(Map<String, dynamic> json) =>
      GamerGuestCountry(
        id: json['id'] as int?,
        code: json['code'] as String?,
        name: json['name'] as String?,
        img: json['img'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'code': code,
        'name': name,
        'img': img,
      };
}
