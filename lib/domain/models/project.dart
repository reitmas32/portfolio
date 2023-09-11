// ignore: avoid_web_libraries_in_flutter, depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:portfolio/domain/models/tecnology.dart';
import 'package:yaml/yaml.dart';

class Project {
  final String title;
  final String titleHead;
  final String content;
  final DateTime publishDate;
  final String img;
  final String description;
  final List<String> tags;
  final String urlProject;
  final String urlRepository;
  final List<Technology> tecnologies;

  Project({
    this.title = '',
    this.titleHead = '',
    required this.publishDate,
    this.img = '',
    this.description = '',
    required this.tecnologies,
    required this.tags,
    this.urlProject = '',
    this.urlRepository = '',
    this.content = '',
  });

  Project.fromJson(Map<dynamic, dynamic> json)
      : publishDate = DateTime.parse(json['publishDate']),
        title = json['title'],
        content = json['content'],
        titleHead = json['titleHead'],
        img = json['img'],
        description = json['description'],
        tags = List.from(json['tags']),
        tecnologies = List.from(json['tecnologies']),
        urlProject = json['urlProject'],
        urlRepository = json['urlRepository'];

  static Future<Project> fromYamlFileWeb(String urlYamlFile) async {
    var project = Project(
      publishDate: DateTime.now(),
      tags: [],
      tecnologies: [],
    );

    var response = await http.get(Uri.parse(urlYamlFile));
    var result = response.body;
    final yamlMap = loadYaml(result);

    project = Project(
      title: yamlMap['title'],
      titleHead: yamlMap['titleHead'],
      content: yamlMap['content'],
      publishDate: DateFormat('dd-MM-yyyy').parse(yamlMap['publishDate']),
      img: yamlMap['img'],
      description: yamlMap['description'],
      tags: List<String>.from(yamlMap['tags']),
      urlProject: yamlMap['urlProject'],
      urlRepository: yamlMap['urlRepository'],
      tecnologies: yamlMap['tecnologies'],
    );

    return project;
  }

  Map<String, dynamic> toJson() => {
        'publishDate': publishDate,
        'title': title,
        'content': content,
        'titleHead': titleHead,
        'img': img,
        'description': description,
        'tags': tags,
        'urlProject': urlProject,
        'urlRepository': urlRepository,
        'tecnologies': tecnologies,
      };

  @override
  String toString() =>
      'title: $title \n publishDate: $publishDate \n content: $content \n titleHead: $titleHead \n img: $img \n description: $description \n tags: $tags \n urlProject: $urlProject \n urlRepository: $urlRepository';
}
