import 'package:flutter/material.dart';
import 'package:koncepto/models/user.dart';
import 'package:koncepto/data/users_database.dart';

class UserDataSource extends DataTableSource {
  UserDataSource({required this.userDatabase}) {
    initialLoading();
    userDatabase.addListener(handleListUpdates);
  }

  UsersDatabase userDatabase;

  List<User> userData = [];

  List<DataRow> userDataRow = [];

  // final List<Map<String, dynamic>> _data = List.UserDataSource(userDatabase: userDatabase);

  void initialLoading() {
    userData = userDatabase.getUsersList();
    buildDataPageRows();
  }

  void handleListUpdates() {
    userData = userDatabase.userList;
    buildDataPageRows();
    notifyListeners();
  }

  void buildDataPageRows() {
    userDataRow = userData
        .map<DataRow>(
          (user) => DataRow(
            cells: <DataCell>[
              DataCell(Text("Hello there")),
              DataCell(Text("Hello there")),
              DataCell(Text("Hello there")),
              DataCell(Text("Hello there")),
            ],
          ),
        )
        .toList();
  }

  void updateDataSource() {
    notifyListeners();
  }

  @override
  List<DataRow> get rows => userDataRow;

  // @override
  // DataRowAdapter buildRow(DataRow row) {
  //   return DataRow(
  //       cells: row.getCells().map<Widget>((e) {
  //     return Container(
  //       alignment: Alignment.center,
  //       padding: EdgeInsets.all(8.0),
  //       child: Text(e.value.toString()),
  //     );
  //   }).toList());
  // }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => userData.length;

  @override
  int get selectedRowCount => 0;

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [DataCell(Text("*"))]);
  }
}
