import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koncepto/models/project.dart';
import 'package:hive/hive.dart';

class ProjectController extends GetxController {
  var projects = [].obs;


  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  FocusNode titleFocus = FocusNode();
  FocusNode descriptioinFocus = FocusNode();

  @override
  onInit() {
    try {
      Hive.registerAdapter(ProjectAdapter());
    } catch (e) {
      // print(e);
    }
    getProjects();
    super.onInit();
  }

  addProject(Project project) async {
    projects.add(project);
    var box = await Hive.openBox('projects');
    box.put('projects', projects.toList());
    // print("Project Object added $projects");
  }

  Future getProjects() async {
    // print("Getting projects");
    try {
      Box box = Hive.box('projects');
    } catch (error) {
      Box box = await Hive.openBox('projects');
      // print(error);
    }

    
  }

  clearProjects() {
    try {
      Hive.deleteBoxFromDisk('projects');
    } catch (error) {
      // print(error);
    }
    projects.value = [];
  }

  deleteProject(Project project) async {
    projects.remove(Project);
    var box = await Hive.openBox('projects');
    box.put('projects', projects.toList());
  }

}