import 'package:clean_architecture/Data/Network/network_services_api.dart';
import 'package:clean_architecture/Models/movies/movies.dart';
import 'package:clean_architecture/config/app_urls.dart';
import 'package:clean_architecture/repository/movies/movies_repository.dart';

class MoviesHttpApiRepository extends MoviesRepository {
  final apiservices = NetworkServicesApi();
  @override
  Future<MoviesModel> fetchMoviesList() async {
    final response = await apiservices.getApi(AppUrls.popularMovieLisUrl);
    return MoviesModel.fromJson(response);
  }
}
