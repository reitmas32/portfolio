import 'package:flutter/material.dart';
import 'package:portfolio/service/DB/data_base_i.dart';
import 'package:portfolio/service/DB/data_base_static.dart';
import 'package:portfolio/ui/theme_preference.dart';

class DataBaseProvider with ChangeNotifier {
  final DataBase _dataBase = DataBaseStatic();


  DataBase getServiceDataBase () => _dataBase;

}