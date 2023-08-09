import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getNowPlayin({ int page = 1});
}