// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../features/splash/data/models/gamer_guest_model/country.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GamerGuestCountryAdapter extends TypeAdapter<GamerGuestCountry> {
  @override
  final int typeId = 1;

  @override
  GamerGuestCountry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GamerGuestCountry(
      id: fields[0] as int?,
      code: fields[1] as String?,
      name: fields[2] as String?,
      img: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, GamerGuestCountry obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GamerGuestCountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
