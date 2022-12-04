import 'package:flutter/material.dart';

import 'package:koncepto/models/project.dart';

class ProjectDialog extends StatefulWidget {
  final Project? project;
  final Function(String name, String description) onClickedDone;

  const ProjectDialog({
    Key? key,
    this.project,
    required this.onClickedDone,
  }) : super(key: key);

  @override
  _ProjectDialogState createState() => _ProjectDialogState();
}

class _ProjectDialogState extends State<ProjectDialog> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();


  @override
  void initState() {
    super.initState();

    if (widget.project != null) {
      final project = widget.project!;
      
      nameController.text = project.name;
      descriptionController.text = project.description;
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.project != null;
    final title = isEditing ? 'Edit Project' : 'Add Project';

    return AlertDialog(
      title: Text(title),
      content: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 15),
              buildName(),
              const SizedBox(height: 15),
              buildDescription()
            ],
          ),
        ),
      ),
      actions: <Widget>[
        buildCancelButton(context),
        buildAddButton(context, isEditing: isEditing),
      ],
    );
  }

  Widget buildName() => TextFormField(
        controller: nameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Name',
        ),
        validator: (name) =>
            name != null && name.isEmpty ? 'Enter a name' : null,
      );

  Widget buildDescription() => TextFormField(
        controller: descriptionController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Description',
        ),
      );

  Widget buildCancelButton(BuildContext context) => TextButton(
        child: const Text('Cancel'),
        onPressed: () => Navigator.of(context).pop(),
      );

  Widget buildAddButton(BuildContext context, {required bool isEditing}) {
    final text = isEditing ? 'Save' : 'Add';

    return TextButton(
      child: Text(text),
      onPressed: () async {
        final isValid = formKey.currentState!.validate();

        if (isValid) {
          final name = nameController.text;
          final description = descriptionController.text;

          widget.onClickedDone(name, description);

          Navigator.of(context).pop();
        }
      },
    );
  }
}