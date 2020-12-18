import 'dart:convert';

List<Movie> movieFromJSON(String str) =>
    List<Movie>.from(json.decode(str)["results"].map((x) => Movie.fromJson(x)));

class Movie {
  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.voteCount,
    this.title,
    this.voteAverage,
    this.video,
    this.overview,
    this.releaseDate,
    this.id,
    this.popularity,
    this.mediaType,
  });

  bool adult;
  String backdropPath;
  List<dynamic> genreIds;
  String originalLanguage;
  String originalTitle;
  String posterPath;
  int voteCount;
  String title;
  double voteAverage;
  bool video;
  String overview;
  String releaseDate;
  int id;
  double popularity;
  String mediaType;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        posterPath: json["poster_path"],
        id: json["id"],
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: json["genre_ids"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        voteCount: json["vote_count"],
        title: json["title"],
        voteAverage: json["vote_average"],
        video: json["video"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        popularity: json["popularity"],
        mediaType: json["media_type"],
      );

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "name": name,
  //       "price": price,
  //       "price_sign": priceSign,
  //       "currency": currency,
  //       "image_link": imageLink,
  //       "product_link": productLink,
  //       "website_link": websiteLink,
  //       "description": description,
  //       "rating": rating == null ? null : rating,
  //       "category": category == null ? null : category,
  //       "product_type": productType,
  //       "tag_list": List<dynamic>.from(tagList.map((x) => x)),
  //       "created_at": createdAt.toIso8601String(),
  //       "updated_at": updatedAt.toIso8601String(),
  //       "product_api_url": productApiUrl,
  //       "api_featured_image": apiFeaturedImage,

  //     };

}
