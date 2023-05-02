import 'package:flutter/foundation.dart';
import 'package:poultrycom/services/services.dart';

import '../models/articles_model.dart';
import '../utils/utils.dart';

class NewsViewModel extends ChangeNotifier {
  NewsViewModel() : super() {
    getNews();
  }

  final NewsService _newsService = locator<NewsService>();
  List<Articles>? _articles;
  bool? _isLoading;
  List<Articles>? get articles => _articles;
  bool? get isLoading => _isLoading;

  setArticles(List<Articles>? articles) {
    _articles = articles;
    notifyListeners();
  }

  setIsLoading(bool? isLoading) {
    _isLoading = isLoading;
  }

  getNews() async {
    try {
      _isLoading = true;
      final response = await _newsService.getNewsService();
      _articles = response.articles;

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
    }
  }
}
