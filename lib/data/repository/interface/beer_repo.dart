import '../../model/beer_model.dart';

abstract class BeerRepository {
  Future<List<Beermodel>> fetchBeers({required int currentPage});
}
