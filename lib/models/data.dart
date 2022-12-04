import 'package:hive/hive.dart';

part 'data.g.dart';

@HiveType(typeId: 3)
class Data extends HiveObject{ 
  @HiveField(0)
  late int id;

  @HiveField(1)
  late DateTime datetime = DateTime.now();

  @HiveField(2)
  late String message;

  @HiveField(3)
  late int deviceID;
}