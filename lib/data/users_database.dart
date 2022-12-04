import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:koncepto/models/user.dart';

class UsersDatabase extends GetxController {
  String boxName = 'users_database';

  List<User> userList = [];


  Future<Box<User>> encryptedBox() async {
    const FlutterSecureStorage secureStorage = FlutterSecureStorage();
    var containsEncryptionKey = await secureStorage.containsKey(key: 'key');
    if (!containsEncryptionKey) {
      var key = Hive.generateSecureKey();
      await secureStorage.write(key: 'key', value: base64UrlEncode(key));
    }
    String ?ssr = await secureStorage.read(key: 'key');
    var encryptionKey = base64Url.decode(ssr.toString());
    var box = await Hive.openBox<User>(boxName,
        encryptionCipher: HiveAesCipher(encryptionKey));
    return box;
  }

  void addUser(User newUser) async {
    var box = await Hive.openBox<User>(boxName);
    await box.add(newUser);
    userList = box.values.toList(); 
    refresh();
  }

  void getUsers() async {
    var box = await Hive.openBox<User>(boxName);
    userList = box.values.toList();
    if (userList.isEmpty) {
      box.add(User(name: 'James', surname: 'Smith', email: 'jamessmith@domain.com', password:'20000'));
      box.add(User(name: 'Mateusz', surname: 'Domański', email: 'mateuszdomanski@domain.com', password:'30000'));
      box.add(User(name: 'Wojciech', surname: 'Zabołotny', email: 'wojciechzabolotny@domain.com', password:'70000'));
    }
    refresh();
  }

  List<User> getUsersList() {
    getUsers();
    return userList;
  }

  void updateUser({required User user,required int key}) async {
    var box = await Hive.openBox<User>(boxName);
    await box.putAt(key, user);
    userList = box.values.toList();
    refresh();
  }

  void deleteUser(key) async {
    var box = await Hive.openBox<User>(boxName);
    await box.deleteAt(key);
    userList = box.values.toList();
    refresh();
  }
}