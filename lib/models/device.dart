import 'package:hive/hive.dart';

part 'device.g.dart';

@HiveType(typeId: 2)
class Device extends HiveObject{ 
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String name;

  @HiveField(2)
  late String type;

  @HiveField(3)
  late String model;

  @HiveField(4)
  late String address;

  @HiveField(5)
  late String description;

  @HiveField(6)
  late String serialPort;

  @HiveField(7)
  late List peripherals = [];

  @HiveField(8)
  late Map interactions = {};
}