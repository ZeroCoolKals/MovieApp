import 'package:movie_app/Models/Movie.dart';

class MovieResponse {
  MovieResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;
}
