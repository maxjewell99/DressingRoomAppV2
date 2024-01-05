// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveDB.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomInfoAdapter extends TypeAdapter<RoomInfo> {
  @override
  final int typeId = 0;

  @override
  RoomInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomInfo(
      roomNum: fields[0] as String,
      quantity: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, RoomInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.roomNum)
      ..writeByte(1)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
