// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';

Project UNICyberProject = Project(
  title: 'Unicyber',
  titleHead: 'Unicyber',
  publishDate: DateTime.utc(2023, 7, 28),
  img:
      'https://raw.githubusercontent.com/reitmas32/UNICyber-BackEnd/main/logo-unicyber.png',
  description:
      'El Sistema de Préstamo de Equipos para Salas de UNICA es una aplicación diseñada para administrar el préstamo de equipos de computo. Este sistema proporciona un conjunto de operaciones que permiten la gestión de cuentas de usuario, la creación y mantenimiento de aulas, el registro y seguimiento de alumnos, el control de préstamos de equipos y la generación de estadísticas.',
  tags: ['design', 'dev', 'Python', 'Flutter'],
  urlProject: 'https://github.com/reitmas32/UNICyber',
  urlRepository: 'https://github.com/reitmas32/UNICyber',
  content: """
![Image](https://raw.githubusercontent.com/reitmas32/UNICyber-BackEnd/main/logo-unicyber.png)
## UNICyber, Sistema de Préstamo de Equipos para Salas de UNICA

## Descripción

El Sistema de Préstamo de Equipos para Salas de UNICA es una aplicación diseñada para administrar el préstamo de equipos de computo. Este sistema proporciona un conjunto de operaciones que permiten la gestión de cuentas de usuario, la creación y mantenimiento de aulas, el registro y seguimiento de alumnos, el control de préstamos de equipos y la generación de estadísticas.

## Características

- **Operaciones de Cuentas** ✅
  - Conexión para Registro de Usuarios UNICA (SignUp) utilizando el sistema UNIAccounts.
  - Inicio de Sesión (SignIn) con UNIAccounts para autenticar a los usuarios.

- **Operaciones de UI**
  - Creación de Aulas para un Usuario.
  - Eliminación de Aulas.
  - Cambio de datos de una Aula (nombre).
  - Actualización de la posición de una Aula.
  - Añadir una nueva Computadora/Impresora/Scanner a una Aula.
  - Eliminar una Computadora de una Aula.
  - Actualización de la posición de una Computadora.
  - Cambiar datos de una Computadora (nombre/tipo).

- **Operaciones de Alumnos**
  - Crear un Alumno.
  - Eliminar un Alumno.
  - Actualizar información de un Alumno.
  - Obtener Datos de un Alumno.

- **Operaciones de Préstamo**
  - Prestar una PC/Impresora/Scanner.
  - Sancionar a un usuario y eliminar sanciones.
  - Liberar un equipo prestado.

- **Operaciones de Estado de PCs**
  - Cambiar el Estado de una PC.
  - Agregar mensajes informativos sobre una PC.

- **Operaciones de Estadísticas**
  - Generar estadísticas por Pos Sala/Usuario.
  - Estadísticas por Aula.
  - Estadísticas por Año y Mes.
  - Estadísticas por Alumno.
  - Estadísticas por Computadora.

- **Operaciones de Mantenimiento**
  - Apagar una PC.
  - Obtener datos de una PC.
  - Ejecutar programas o encuestas en una PC.

## Instrucciones de Ejecución

Sigue los siguientes pasos para ejecutar el sistema:

1. Clona el repositorio desde GitHub: 
###### git clone https://github.com/reitmas32/UNICyber.git

2. Inicializar proyecto Flutter: 
###### flutter create .

3. Ejecuta la aplicación utilizando el comando: 
###### flutter run -d [Device]

## Compilación

Para compilar el codigo y obtener un ejecutable: 
###### flutter build [web|linux|windows]

## Contribuciones

¡Agradecemos las contribuciones a este proyecto! Si deseas colaborar, sigue las directrices para contribuir al código y abre solicitudes de extracción (Pull Requests). También puedes reportar problemas o sugerir mejoras a través de las issues en el repositorio de GitHub.

## Contacto

Si tienes preguntas o comentarios sobre el proyecto, no dudes en ponerte en contacto con el equipo de desarrollo a través de unihacks.mail@gmail.com.

¡Gracias por tu interés en nuestro proyecto! Esperamos que el Sistema de Préstamo de Equipos para Salas de UNICA sea de gran utilidad y facilite la administración de los recursos tecnológicos en la institución.


""",
);
