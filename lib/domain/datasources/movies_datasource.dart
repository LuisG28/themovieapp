import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieDataSource {
  Future<List<Movie>> getNowPlayin({ int page = 1});
   
}