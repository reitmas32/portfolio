import 'package:flutter/material.dart';
import 'package:portfolio/service/DB/data_base_i.dart';
import 'package:portfolio/service/DB/data_base_static.dart';

class DataBaseProvider with ChangeNotifier {
  final DataBase _dataBase = DataBaseStatic();


  DataBase getServiceDataBase () => _dataBase;

}