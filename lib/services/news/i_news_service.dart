import 'package:poultrycom/models/news_model.dart';

abstract class INewsService {
  Future<NewsModel>? getNewsService();
}
