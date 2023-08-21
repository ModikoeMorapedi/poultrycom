import 'dart:convert';

import 'package:poultrycom/models/news_model.dart';
import 'package:poultrycom/services/base_service.dart';
import 'package:poultrycom/services/news/i_news_service.dart';
import 'package:poultrycom/utils/constants.dart';

class NewsService extends BaseService implements INewsService {
  @override
  Future<NewsModel> getNewsService() async {
    final response = await getAsync(newsApi);
    return NewsModel.fromJson(response);
  }
}
