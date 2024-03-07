import 'package:news_app_clean_architecture/features/news_feature/domain/entities/article.dart';
import '../../../../core/resources/data_state.dart';

abstract class ArticleRepository{
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}