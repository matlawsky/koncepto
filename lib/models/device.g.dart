// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceAdapter extends TypeAdapter<Device> {
  @override
  final int typeId = 2;

  @override
  Device read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Device()
      ..id = fields[0] as String
      ..name = fields[1] as String
      ..type = fields[2] as String
      ..model = fields[3] as String
      ..address = fields[4] as String
      ..description = fields[5] as String
      ..serialPort = fields[6] as String
      ..peripherals = (fields[7] as List).cast<dynamic>()
      ..interactions = (fields[8] as Map).cast<dynamic, dynamic>();
  }

  @override
  void write(BinaryWriter writer, Device obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.model)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.serialPort)
      ..writeByte(7)
      ..write(obj.peripherals)
      ..writeByte(8)
      ..write(obj.interactions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
