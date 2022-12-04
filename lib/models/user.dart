import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject{ 
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String name;

  @HiveField(2)
  late String surname;

  @HiveField(3)
  late String email;

  @HiveField(4)
  late String password;

  @HiveField(5)
  late List projects;

  @HiveField(6)
  late List devices;

  User({required this.name, required this.surname, required this.email, required this.password})
    : id = const Uuid().v1(),
      projects = [],
      devices = [];
}