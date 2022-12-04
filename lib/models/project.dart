import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'project.g.dart';

@HiveType(typeId: 1)
class Project extends HiveObject{ 
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String name;

  @HiveField(2)
  late String description;

  @HiveField(3)
  late List devices = [];

  // @HiveField(4)
  // late String ownerId;

  Project({required this.name, required this.description})
  : id = const Uuid().v1(),
    devices = [];
}