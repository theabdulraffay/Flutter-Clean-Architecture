part of 'movie_bloc.dart';

class MovieState extends Equatable {
  const MovieState({
    required this.moviesList,
  });

  MovieState copyWith({
    ApiResponse<MoviesModel>? moviesList,
  }) {
    return MovieState(
      moviesList: moviesList ?? this.moviesList,
    );
  }

  final ApiResponse<MoviesModel> moviesList;
  @override
  List<Object> get props => [moviesList];
}
