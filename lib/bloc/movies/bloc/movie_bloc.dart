import 'package:clean_architecture/Data/response/api_response.dart';
import 'package:clean_architecture/Models/movies/movies.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(MovieState(moviesList: ApiResponse.loading())) {
    on<MovieEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
