
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

import '../datasources/moviedb_datasource.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MoviedbDatasource dataSource;
  MovieRepositoryImpl(this.dataSource);

  @override
  Future<List<Movie>> getNowPlayin({int page = 1}) {
    return dataSource.getNowPlayin(page: page);
  }

}