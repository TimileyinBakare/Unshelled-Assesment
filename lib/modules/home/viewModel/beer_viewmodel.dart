import 'package:flutter/foundation.dart';
import 'package:unshelled/data/model/beer_model.dart';

import '../../../utils/logger.dart';
import '../../../data/repository/beer_impl.dart';

class BeerListModel extends ChangeNotifier {
  BeerListModel() {
    fetchBeers();
  }

  List<Beermodel> _beers = [];
  bool _isLoading = false;
  int _currentPage = 1; 

  List<Beermodel> get beers => _beers; 
  bool get isLoading => _isLoading;

  Future<void> fetchBeers() async {
    if (!_isLoading) {
      _isLoading = true;
      try {
        BeerRepositoryImpl repository = BeerRepositoryImpl();

        _beers = await repository.fetchBeers(currentPage: _currentPage);
        logger.i("Length of the data is ${_beers.length}");
      } catch (error) {
        logger.e('Error fetching beers: $error');
      }

      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchMoreBeers() async {
    if (!_isLoading) {
      _isLoading = true;
      try {
        BeerRepositoryImpl repository = BeerRepositoryImpl();

        _currentPage++; 
        List<Beermodel> moreBeers = await repository.fetchBeers(currentPage: _currentPage);
        
        
        _beers.addAll(moreBeers);
        
        logger.i("Length of the data is ${_beers.length}");
      } catch (error) {
        logger.e('Error fetching more beers: $error');
      }

      _isLoading = false;
      notifyListeners();
    }
  }
}
