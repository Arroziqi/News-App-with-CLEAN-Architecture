import 'package:news_app_clean_architecture/core/constants/constants.dart';
import 'package:news_app_clean_architecture/features/news_feature/data/models/article.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService{
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apikey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
  });
}