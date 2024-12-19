// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../features/splash/data/models/gamer_guest_model/user_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDataAdapter extends TypeAdapter<UserData> {
  @override
  final int typeId = 0;

  @override
  UserData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserData(
      id: fields[0] as int?,
      fullName: fields[1] as String?,
      firstName: fields[2] as String?,
      lastName: fields[3] as int?,
      bio: fields[4] as dynamic,
      username: fields[5] as String?,
      birthdate: fields[6] as dynamic,
      email: fields[7] as dynamic,
      role: fields[8] as String?,
      level: fields[9] as int?,
      profileImg: fields[10] as String?,
      points: fields[11] as int?,
      gender: fields[12] as dynamic,
      lastActive: fields[13] as DateTime?,
      lang: fields[14] as String?,
      zoneDiamond: fields[15] as int?,
      gameLogs: fields[16] as String?,
      rateWin: fields[17] as String?,
      gameNum: fields[18] as dynamic,
      wallet: fields[19] as int?,
      diamond: fields[20] as int?,
      gold: fields[21] as int?,
      country: fields[22] as GamerGuestCountry?,
    );
  }

  @override
  void write(BinaryWriter writer, UserData obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.firstName)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(4)
      ..write(obj.bio)
      ..writeByte(5)
      ..write(obj.username)
      ..writeByte(6)
      ..write(obj.birthdate)
      ..writeByte(7)
      ..write(obj.email)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.level)
      ..writeByte(10)
      ..write(obj.profileImg)
      ..writeByte(11)
      ..write(obj.points)
      ..writeByte(12)
      ..write(obj.gender)
      ..writeByte(13)
      ..write(obj.lastActive)
      ..writeByte(14)
      ..write(obj.lang)
      ..writeByte(15)
      ..write(obj.zoneDiamond)
      ..writeByte(16)
      ..write(obj.gameLogs)
      ..writeByte(17)
      ..write(obj.rateWin)
      ..writeByte(18)
      ..write(obj.gameNum)
      ..writeByte(19)
      ..write(obj.wallet)
      ..writeByte(20)
      ..write(obj.diamond)
      ..writeByte(21)
      ..write(obj.gold)
      ..writeByte(22)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
