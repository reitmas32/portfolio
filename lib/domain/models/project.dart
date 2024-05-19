// ignore: avoid_web_libraries_in_flutter, depend_on_referenced_packages
import 'package:portfolio/domain/models/tecnology.dart';

class Project {
  final String title;
  final String titleHead;
  final String content;
  final DateTime publishDate;
  final String img;
  final Map<String, String> description;
  final List<String> tags;
  final String urlProject;
  final String urlRepository;
  final List<Technology> tecnologies;

  Project({
    this.title = '',
    this.titleHead = '',
    required this.publishDate,
    this.img = '',
    required this.description,
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
