class Experience {
  final String start;
  final String end;
  final String title;
  final String company;
  final String description;

  Experience({
    required this.start,
    required this.title,
    required this.company,
    required this.description,
    this.end = '',
  });

  // Método para serializar un objeto Experience a JSON
  Map<String, dynamic> toJson() {
    return {
      'start': start,
      'end': end,
      'title': title,
      'company': company,
      'description': description,
    };
  }

  // Método para crear un objeto Experience a partir de un mapa (por ejemplo, desde JSON)
  factory Experience.fromMap(Map<String, dynamic> map) {
    return Experience(
      start: map['start'],
      end: map['end'] ??
          '', // Puede ser nulo, por lo que proporcionamos un valor predeterminado vacío
      title: map['title'],
      company: map['company'],
      description: map['description'],
    );
  }

  // Método para obtener una representación de cadena del objeto Experience
  @override
  String toString() {
    return 'Experience(start: $start, end: $end, title: $title, company: $company, description: $description)';
  }
}
