import 'package:flutter/material.dart';
import 'package:portfolio/service/DB/data_base_static.dart';

class DataBaseProvider with ChangeNotifier {
  final DataBaseStatic _dataBase = DataBaseStatic();

  DataBaseStatic getServiceDataBase() => _dataBase;
}
