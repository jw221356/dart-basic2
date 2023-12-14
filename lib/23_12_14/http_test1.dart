import 'dart:convert';

import 'package:http/http.dart' as http;
import 'movie.dart';

void main() async {
  Movie movies = await getMovie();
}


Future<Movie> getMovie() async{
  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final jsonList = jsonDecode(response.body);
  var movie = Movie.fromJson(jsonList);
  return movie;
}

