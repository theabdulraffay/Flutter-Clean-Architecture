import '../../Models/movies/movies.dart';

abstract class MoviesRepository {
  Future<MoviesModel> fetchMoviesList();
}
