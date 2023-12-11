import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_list/core/enums.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/domain/repositories/movies_repository.dart';
import 'package:movies_list/features/presentation/pages/cubit/presentation_cubit.dart';

class MockRepository extends Mock implements MoviesRepository {}

void main() {
  late PresentationCubit sut;
  late MockRepository moviesRepository;

  setUp(() {
    moviesRepository = MockRepository();
    sut = PresentationCubit(moviesRepository: moviesRepository);
  });

  const testItems = [
    MovieModel(
        id: '1',
        cover: 'cover1',
        title: 'title1',
        release: 'release1',
        description: 'description1',
        posterPath: 'posterPath1'),
    MovieModel(
        id: '2',
        cover: 'cover2',
        title: 'title2',
        release: 'release2',
        description: 'description2',
        posterPath: 'posterPath2'),
    MovieModel(
        id: '3',
        cover: 'cover3',
        title: 'title3',
        release: 'release3',
        description: 'description3',
        posterPath: 'posterPath3'),
    MovieModel(
        id: '4',
        cover: 'cover4',
        title: 'title4',
        release: 'release4',
        description: 'description4',
        posterPath: 'posterPath4'),
  ];

  final testError = Exception('error');
  const testErrorMessage = 'Exception: error';
  group('getMoviesModels', () {
    group('getMoviesData()', () {
      blocTest<PresentationCubit, PresentationState>(
          'emits Status.loading, then Status.success with movie items',
          build: () {
            when(() => moviesRepository.getMoviesData())
                .thenAnswer((_) => Future.value(testItems));
            return sut;
          },
          act: (cubit) {
            cubit.getAllMoviesModels();
          },
          expect: () => [
                PresentationState(status: Status.loading),
                PresentationState(
                    status: Status.success, movieModel: testItems),
              ],
          verify: (_) {
            verify(() => moviesRepository.getMoviesData()).called(1);
          });
    });
    blocTest<PresentationCubit, PresentationState>(
      'emits Status.loading, then Status.error on error',
      build: () {
        when(() => moviesRepository.getMoviesData())
            .thenAnswer((_) => Future.error(testError));
        return sut;
      },
      act: (cubit) {
        cubit.getAllMoviesModels();
      },
      expect: () => [
        PresentationState(status: Status.loading),
        PresentationState(
          status: Status.error,
          errorMessage: testErrorMessage,
        ),
      ],
    );

    group('getMoviesDataByYear()', () {
      blocTest<PresentationCubit, PresentationState>(
        'emits Status.loading, then Status.success with movie items when year is not "All"',
        build: () {
          when(() => moviesRepository.getMoviesDataByYear(any()))
              .thenAnswer((_) => Future.value(testItems));
          return sut;
        },
        act: (cubit) {
          cubit.getMoviesModelsByYear(2023);
        },
        expect: () => [
          PresentationState(status: Status.loading),
          PresentationState(status: Status.success, movieModel: testItems),
        ],
        verify: (_) {
          verify(() => moviesRepository.getMoviesDataByYear('2023')).called(1);
        },
      );

      blocTest<PresentationCubit, PresentationState>(
        'emits Status.loading, then Status.error on error when year is not "All"',
        build: () {
          when(() => moviesRepository.getMoviesDataByYear(any()))
              .thenAnswer((_) => Future.error(testError));
          return sut;
        },
        act: (cubit) {
          cubit.getMoviesModelsByYear(2023);
        },
        expect: () => [
          PresentationState(status: Status.loading),
          PresentationState(
            status: Status.error,
            errorMessage: testErrorMessage,
          ),
        ],
      );
    });
  });
}
