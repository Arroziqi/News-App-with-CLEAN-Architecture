import 'package:news_app_clean_architecture/core/resources/data_state.dart';
import 'package:news_app_clean_architecture/core/usecases/usecase.dart';
import 'package:news_app_clean_architecture/features/news_feature/domain/entities/article.dart';
import 'package:news_app_clean_architecture/features/news_feature/domain/repository/article_repository.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>, void>{
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }

}