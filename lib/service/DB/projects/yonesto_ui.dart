// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/tecnologies.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';

Project YonestoUIProject = Project(
  tecnologies: [
    Tecnologies.flutter,
  ],
  title: 'YonestoUI',
  titleHead: 'YonestoUI',
  publishDate: DateTime.utc(2023, 8, 27),
  img:
      'https://raw.githubusercontent.com/reitmas32/yonesto_ui/main/assets/ui_store.png',
  description: {
    LangsSupported.ENGLISH:
        'Yonesto is a cross-platform application developed in Flutter that allows users to quickly and easily purchase products from a small neighborhood store. This application is ideal for small local shops that want to have an online presence and provide their customers with a convenient shopping experience.',
    LangsSupported.SPANISH:
        'Yonesto es una aplicación multiplataforma desarrollada en Flutter que permite a los usuarios comprar productos de forma rápida y sencilla en una pequeña tienda de barrio. Esta aplicación es ideal para pequeñas tiendas locales que desean tener presencia en línea y brindar a sus clientes una experiencia de compra conveniente.',
  },
  tags: ['design', 'dev', 'flutter'],
  urlProject: 'https://yonesto-experiment.onrender.com',
  urlRepository: 'https://github.com/reitmas32/yonesto_ui',
  content: """
# Tiendita App

Tiendita App es una aplicación multiplataforma desarrollada en Flutter que permite a los usuarios comprar productos de una tiendita de forma rápida y sencilla. Esta aplicación es ideal para pequeñas tiendas locales que desean tener una presencia en línea y ofrecer a sus clientes una experiencia de compra conveniente.

## Características

- Exploración de productos: Los usuarios pueden navegar por una lista de productos disponibles en la tienda.
- Detalles del producto: Obtén información detallada sobre cada producto, incluyendo descripciones, precios y disponibilidad.
- Carrito de compras: Los usuarios pueden agregar productos al carrito de compras y gestionar las cantidades.

## Capturas de Pantalla

![Vista Web](https://raw.githubusercontent.com/reitmas32/yonesto_ui/main/assets/ui_store.png)
![Vista Movile](https://raw.githubusercontent.com/reitmas32/yonesto_ui/main/assets/movile.png)
![Vista Movile Tema Claro](https://raw.githubusercontent.com/reitmas32/yonesto_ui/main/assets/movile_light.png)

## Instalación

1. Clona este repositorio:


###### git clone 'https://github.com/reitmas32/yonesto_ui.git'

2. Ejecuta la aplicacion Web


###### flutter run -d chrome


3. Compila la App Web


###### flutter build web

      """,
);
