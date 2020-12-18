import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/Const/Constant.dart' as cons;
import 'package:movie_app/Models/Movie.dart';
import 'package:movie_app/Models/MovieResponse.dart';

class MovieService extends GetxController {
  static var client = http.Client();

  static Future<List<Movie>> getMovies() async {
    var response =
        await client.get(cons.MOVIE_ENDPOINT_URL + "?api_key=" + cons.API_KEY);

    if (response.statusCode == 200) {
      var jsonString = response.body;
      //Map<String, dynamic> map = json.decode(jsonString);
      //log(map["results"][0].toString());
      return movieFromJSON(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
