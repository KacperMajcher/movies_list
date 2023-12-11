part of 'presentation_cubit.dart';

@freezed
class PresentationState with _$PresentationState {
  factory PresentationState(
      {@Default([]) List<MovieModel> movieModel,
      @Default(Status.initial) Status status,
      String? errorMessage}) = _PresentationState;
}
