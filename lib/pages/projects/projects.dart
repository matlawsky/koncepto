import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koncepto/boxes.dart';
import 'package:koncepto/constants/controllers.dart';
import 'package:koncepto/models/project.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:koncepto/widgets/responsiveness.dart';
import 'package:koncepto/pages/projects/project_dialog.dart';


class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  void dispose() {
    Hive.box('projects').close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(text: menuController.activeItem.value, size: 24, weight: FontWeight.bold, color: Colors.black,),
            )
          ],
        )),
        const SizedBox(height: 16.0),
        Row(children: [
          ElevatedButton.icon(
            onPressed: () => showDialog(
            context: context,
            builder: (context) => const ProjectDialog(
              onClickedDone: addProject,
            )
            ),
            icon: const Icon(Icons.add, size: 18),
            label: const Text("New Project"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))),
          ),
          const SizedBox(width: 8.0),
        ],),
        const SizedBox(height: 8.0),
        Column(
          children:[ ValueListenableBuilder<Box<Project>>(
          valueListenable: Boxes.getProjects().listenable(),
          builder: (context, box, _) {
            final projects = box.values.toList().cast<Project>();

            return buildContent(projects);
          },
        ),
          ]
        ),
      ],
    );
  }

  Widget buildContent(List<Project> projects) {
    if (projects.isEmpty) {
      return const Center(
        child: Text(
          'No projects yet!',
          style: TextStyle(fontSize: 24),
        ),
      );
    } 

    return Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: projects.length,
              itemBuilder: (BuildContext context, int index) {
                final Project = projects[index];

                return buildProject(context, Project);
              },
            ),
          );
    }
  }

  Widget buildProject(
    BuildContext context,
    Project project,
  ) {

    return Card(
      
      color: Colors.white,
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        title: Text(
          project.name,
          maxLines: 2,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          project.description,
          style: const TextStyle(
              color: Colors.black, 
              fontWeight: FontWeight.bold,
              fontSize: 12
              ),
        ),
        children: [
          buildButtons(context, project),
        ],
      ),
    );
  }

  Widget buildButtons(BuildContext context, Project project) => Row(
        children: [
          Expanded(
            child: TextButton.icon(
              label: const Text('Edit'),
              icon: const Icon(Icons.edit),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProjectDialog(
                    project: project,
                    onClickedDone: (name, description) =>
                        editProject(project, name, description,),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton.icon(
              label: const Text('Delete'),
              icon: const Icon(Icons.delete),
              onPressed: () => deleteProject(project),
            ),
          )
        ],
      );


  Future addProject(String name, String description) async {
    final project = Project(name: name, description: description)
      ..name = name
      ..description = description;

    final box = Boxes.getProjects();
    box.add(project);

  }

  void assignUser(
    Project project,
    String userId,    
  ) {
    project.devices.add(userId);
    project.save();    
  }

  void assignDevice(
    Project project,
    String deviceId,    
  ) {
    project.devices.add(deviceId);
    project.save();
  }

  void editProject(
    Project project,
    String name,
    String description,
  ) {
    project.name = name;
    project.description = description;

    project.save();
  }

  void deleteProject(Project project) {

    project.delete();
  }



