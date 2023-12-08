// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: json['id'] as int,
      cover: json['backdrop_path'] as String,
      title: json['original_title'] as String,
      release: json['release_date'] as String,
      description: json['overview'] as String,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.cover,
      'original_title': instance.title,
      'release_date': instance.release,
      'overview': instance.description,
    };
