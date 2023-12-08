// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int,
      cover: json['backdrop_path'] as String,
      title: json['original_title'] as String,
      release: json['release_date'] as String,
      description: json['overview'] as String,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.cover,
      'original_title': instance.title,
      'release_date': instance.release,
      'overview': instance.description,
    };
