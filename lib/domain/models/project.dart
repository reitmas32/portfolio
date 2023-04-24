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

  Project({
    required this.title,
    required this.titleHead,
    required this.publishDate,
    required this.img,
    required this.description,
    required this.tags,
    required this.urlProject,
    required this.urlRepository,
    required this.content,
  });

  Project.fromJson(Map<dynamic, dynamic> json)
      : publishDate = DateTime.parse(json['publishDate']),
        title = json['title'],
        content = json['content'],
        titleHead = json['titleHead'],
        img = json['img'],
        description = json['description'],
        tags = List.from(json['tags']),
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
      };

  @override
  String toString() => 
        'title: $title \n publishDate: $publishDate \n content: $content \n titleHead: $titleHead \n img: $img \n description: $description \n tags: $tags \n urlProject: $urlProject \n urlRepository: $urlRepository';

}
