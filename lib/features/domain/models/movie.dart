class MovieModel {
  MovieModel({
    required this.id,
    required this.cover,
    required this.title,
    required this.release,
    required this.description,
  });

  final String id;
  final String cover;
  final String title;
  final String release;
  final String description;

  //conventer Map<String, dynamic> to MovieModel
  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        cover = json['backdrop_path'],
        title = json['original_title'],
        release = json['release_date'],
        description = json['overview'];
}
