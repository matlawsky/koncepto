import 'package:koncepto/data/devices.dart';

class Project{
  const Project(
    this.id,
    this.name,
    this.description,
    this.devicesList
  );

  final int id;
  final String name;
  final String description;
  final List <Device> devicesList;
}