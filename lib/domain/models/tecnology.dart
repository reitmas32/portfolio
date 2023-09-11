import 'package:flutter/material.dart';

class Technology {
  final String name;
  final String url;
  final IconData? icon;
  final String? logo;
  final String? logoSecondary;

  const Technology(
      {required this.name,
      required this.url,
      this.icon,
      this.logo,
      this.logoSecondary});

  // Método para serializar un objeto Technology a JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }

  // Método para crear un objeto Technology a partir de un mapa (por ejemplo, desde JSON)
  factory Technology.fromMap(Map<String, dynamic> map) {
    return Technology(
      name: map['name'],
      url: map['url'],
    );
  }

  // Método para obtener una representación de cadena del objeto Technology
  @override
  String toString() {
    return 'Technology(name: $name, url: $url)';
  }
}
