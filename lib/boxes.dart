import 'package:hive/hive.dart';
import 'package:koncepto/models/project.dart';
import 'package:koncepto/models/device.dart';

class Boxes {
  static Box<Project> getProjects() =>
      Hive.box<Project>('projects');

  static Box<Device> getDevices() =>
      Hive.box<Device>('devices');

}