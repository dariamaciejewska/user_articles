import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_articles/domain/models/author_model.dart';

part 'authors_remote_data_source.g.dart';

@RestApi(baseUrl: "http://my-json-server.typicode.com/adamsmaka/json-demo")
abstract class AuthorsRemoteRetroFitDataSource {
  factory AuthorsRemoteRetroFitDataSource(Dio dio, {String baseUrl}) =
      _AuthorsRemoteRetroFitDataSource;

  @GET("/users")
  Future<List<AuthorModel>> getAuthors();
}
