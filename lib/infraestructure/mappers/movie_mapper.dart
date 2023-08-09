import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/models/movieDB/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movie) => Movie(
    adult: movie.adult,
    backdropPath: (movie.backdropPath != '') ? 
      'https://image.tmdb.org/t/p/w500/${movie.backdropPath}' 
      : 'https://ih1.redbubble.net/image.1027712254.9762/pp,840x830-pad,1000x1000,f8f8f8.u2.jpg',
    genreIds: movie.genreIds.map((e) => e.toString()).toList(),
    id: movie.id,
    originalLanguage: movie.originalLanguage,
    originalTitle: movie.originalTitle,
    overview: movie.overview,
    popularity: movie.popularity,
    posterPath: (movie.posterPath != '') ? 
      'https://image.tmdb.org/t/p/w500/${movie.backdropPath}' 
      : 'no-poster',
    releaseDate: movie.releaseDate,
    title: movie.title,
    video: movie.video,
    voteAverage: movie.voteAverage,
    voteCount: movie.voteCount
  );
}
