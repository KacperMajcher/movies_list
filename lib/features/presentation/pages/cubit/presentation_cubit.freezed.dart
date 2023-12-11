// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PresentationState {
  List<MovieModel> get movieModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresentationStateCopyWith<PresentationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationStateCopyWith<$Res> {
  factory $PresentationStateCopyWith(
          PresentationState value, $Res Function(PresentationState) then) =
      _$PresentationStateCopyWithImpl<$Res, PresentationState>;
  @useResult
  $Res call({List<MovieModel> movieModel, Status status, String? errorMessage});
}

/// @nodoc
class _$PresentationStateCopyWithImpl<$Res, $Val extends PresentationState>
    implements $PresentationStateCopyWith<$Res> {
  _$PresentationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      movieModel: null == movieModel
          ? _value.movieModel
          : movieModel // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresentationStateImplCopyWith<$Res>
    implements $PresentationStateCopyWith<$Res> {
  factory _$$PresentationStateImplCopyWith(_$PresentationStateImpl value,
          $Res Function(_$PresentationStateImpl) then) =
      __$$PresentationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieModel> movieModel, Status status, String? errorMessage});
}

/// @nodoc
class __$$PresentationStateImplCopyWithImpl<$Res>
    extends _$PresentationStateCopyWithImpl<$Res, _$PresentationStateImpl>
    implements _$$PresentationStateImplCopyWith<$Res> {
  __$$PresentationStateImplCopyWithImpl(_$PresentationStateImpl _value,
      $Res Function(_$PresentationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PresentationStateImpl(
      movieModel: null == movieModel
          ? _value._movieModel
          : movieModel // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PresentationStateImpl implements _PresentationState {
  _$PresentationStateImpl(
      {final List<MovieModel> movieModel = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _movieModel = movieModel;

  final List<MovieModel> _movieModel;
  @override
  @JsonKey()
  List<MovieModel> get movieModel {
    if (_movieModel is EqualUnmodifiableListView) return _movieModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieModel);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PresentationState(movieModel: $movieModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._movieModel, _movieModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_movieModel), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentationStateImplCopyWith<_$PresentationStateImpl> get copyWith =>
      __$$PresentationStateImplCopyWithImpl<_$PresentationStateImpl>(
          this, _$identity);
}

abstract class _PresentationState implements PresentationState {
  factory _PresentationState(
      {final List<MovieModel> movieModel,
      final Status status,
      final String? errorMessage}) = _$PresentationStateImpl;

  @override
  List<MovieModel> get movieModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PresentationStateImplCopyWith<_$PresentationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
