import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_articles/domain/models/article_model.dart';

part 'articles_remote_data_source.g.dart';

@RestApi(baseUrl: "http://my-json-server.typicode.com/adamsmaka/json-demo")
abstract class ArticlesRemoteRetroFitDataSource {
  factory ArticlesRemoteRetroFitDataSource(Dio dio, {String baseUrl}) =
      _ArticlesRemoteRetroFitDataSource;

  @GET("/articles")
  Future<List<ArticleModel>> getArticles();
}
