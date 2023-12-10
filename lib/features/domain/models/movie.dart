import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.g.dart';
part 'movie.freezed.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required String id,
    @JsonKey(name: 'backdrop_path') required String cover,
    @JsonKey(name: 'original_title') required String title,
    @JsonKey(name: 'release_date') required String release,
    @JsonKey(name: 'overview') required String description,
    @JsonKey(name: 'poster_path') required String posterPath,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);
}
