import 'dart:convert';

import 'package:poultrycom/models/news_model.dart';
import 'package:poultrycom/services/base_service.dart';

class NewsService extends BaseService {
  Future<NewsModel> getNewsService() async {
    final response =
        await getAsync(Uri.https('newsapi.org', 'v2/top-headlines', {
      'apiKey': '82a0db27749d47bd9b71c66d8bf55532',
      'country': 'za',
      'category': 'science'
    }));

    return NewsModel.fromJson(response);
  }
}
