import 'package:flutter/material.dart';
import 'package:portfolio/service/DB/date_base_files.dart';

class DataBaseProvider with ChangeNotifier {
  final DataBaseFiles _dataBase = DataBaseFiles();

  DataBaseProvider() {
    _dataBase.loadFiles();
  }

  DataBaseFiles getServiceDataBase() => _dataBase;
}
