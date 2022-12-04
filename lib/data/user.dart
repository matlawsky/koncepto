class User { 
  User(
    this.id,
    this.name,
    this.surname,
    this.email,
    this.projectsAccessListIds,
    this.deviceAccessListIds,
  );

  final int id;
  final String name;
  final String surname;
  final String email;
  final List <int> projectsAccessListIds;
  final List <int> deviceAccessListIds;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['id'], json['name'], json['surname'], json['email'], json['projectsAccessListIds'], json['deviceAccessListIds']);
  }

}


