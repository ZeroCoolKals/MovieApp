import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movie_app/Models/Movie.dart';
import 'package:get/get.dart';
import 'package:movie_app/Services/MovieService.dart';

class MovieController extends GetxController {
  var movieList = List<Movie>().obs;
  @override
  void onInit() {
    getMovies();
    super.onInit();
  }

  void getMovies() async {
    List<Movie> results = await MovieService.getMovies();
    movieList.assignAll(results);
  }
}
