import 'package:flutter/cupertino.dart';
import '../models/news_list_model.dart';
import '../repo/news_repo.dart';

class NewsViewModel extends ChangeNotifier{
  final NewsRepo _newsRepo = NewsRepo();

  // State variables
  List<Articles> _newsList = [];
  bool _isLoading = false;
  String? _errorMessage;


  // Getters for the state
  List<Articles> get newsList => _newsList;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;


  // Fetch news data
  Future<void> fetchNews() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    // Notify UI that loading has started

    try {
      _newsList = await _newsRepo.fetchAllNews();
    } catch (error) {
      _errorMessage = error.toString();
    } finally {
      _isLoading = false;
      notifyListeners(); // Notify UI that loading is complete
    }
  }

}