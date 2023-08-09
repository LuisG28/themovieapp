import 'package:cinemapedia/config/constans/enviroment.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/mappers/movie_mapper.dart';
import 'package:cinemapedia/infraestructure/models/movieDB/moviedb_response.dart';
import 'package:dio/dio.dart';

import '../../domain/datasources/movies_datasource.dart';

class MoviedbDatasource extends MovieDataSource{

  final dio =  Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Enviroment.movieDbKey,
      'language': 'es-MX'
    }
  ));

  @override
  Future<List<Movie>> getNowPlayin({int page = 1}) async{
    final response = await dio.get('/movie/now_playing');
    final movieDBResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDBResponse.results
    .where((movie) => movie.posterPath != 'no-poster')
    .map(
      (movie) => MovieMapper.movieDBToEntity(movie)
    ).toList();

    return movies;
  }



}