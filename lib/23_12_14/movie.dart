class Movie {
  Dates dates;
  int page;
  List<MovieResult> results;
  int total_pages;
  int total_results;

  Movie({
    required this.dates,
    required this.page,
    required this.results,
    required this.total_pages,
    required this.total_results,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      dates: Dates.fromJson(json['dates']),
      page: json['page'],
      results: List<MovieResult>.from(
          json['results'].map((result) => MovieResult.fromJson(result))),
      total_pages: json['total_pages'],
      total_results: json['total_results'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dates': dates.toJson(),
      'page': page,
      'results': results.map((result) => result.toJson()).toList(),
      'total_pages': total_pages,
      'total_results': total_results,
    };
  }
}

class Dates {
  String maximum;
  String minimum;

  Dates({required this.maximum, required this.minimum});

  factory Dates.fromJson(Map<String, dynamic> json) {
    return Dates(
      maximum: json['maximum'],
      minimum: json['minimum'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maximum': maximum,
      'minimum': minimum,
    };
  }
}

class MovieResult {
  bool adult;
  String? backdrop_path;
  List<int> genre_ids;
  int id;
  String original_language;
  String original_title;
  String overview;
  double popularity;
  String? poster_path;
  String release_date;
  String title;
  bool video;
  double vote_average;
  int vote_count;

  MovieResult({
    required this.adult,
    required this.backdrop_path,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  factory MovieResult.fromJson(Map<String, dynamic> json) {
    return MovieResult(
      adult: json['adult'],
      backdrop_path: json['backdrop_path'],
      genre_ids: List<int>.from(json['genre_ids']),
      id: json['id'],
      original_language: json['original_language'],
      original_title: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      poster_path: json['poster_path'],
      release_date: json['release_date'],
      title: json['title'],
      video: json['video'],
      vote_average: json['vote_average'],
      vote_count: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdrop_path,
      'genre_ids': genre_ids,
      'id': id,
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'video': video,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }
}
