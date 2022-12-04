import 'package:get/get.dart';
import 'package:koncepto/models/user.dart';


class UserController extends GetxController {
  late List<User> _users;

  List<User> get users => _users;

  UserController(){
    _users = [];
  }

  addUser(User user) {
    _users.add(user);
    update();
  }

  deleteUser(String id) {
    _users.removeWhere((element) => element.id == id);
    update();
  }

  changeUserPassword(User oldUser, String newPassword) {
    int index = _users.indexOf(oldUser);
    _users[index].password = newPassword;
    update();
  }
}