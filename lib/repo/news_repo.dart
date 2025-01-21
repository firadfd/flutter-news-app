import '../models/news_list_model.dart';
import '../services/api_service.dart';

class NewsRepo{
  final ApiService _service = ApiService();

  Future<List<Articles>> fetchAllNews() async {
    final response = await _service.fetchAllNews({'country': 'us', 'category': 'business','apiKey':'9140fc92a1cc4e9384d163110f3387cf'});
    if (response['status'] == 'ok') {
      final List articles = response['articles'];
      return articles.map((article) => Articles.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}