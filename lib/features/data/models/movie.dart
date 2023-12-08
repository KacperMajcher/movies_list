class MovieModel {
  MovieModel({
    required this.page,
    required this.title,
    required this.description,
  });

  final String page;
  final String title;
  final String description;

  //conventer Map<String, dynamic> to MovieModel
  MovieModel.fromJson(Map<String, dynamic> json)
      : page = json['page'],
        title = json['title'],
        description = json['description'];
}
