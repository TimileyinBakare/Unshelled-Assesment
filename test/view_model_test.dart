// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:unshelled/app/modules/home/model/beer_model.dart';
// import 'package:unshelled/app/modules/home/repository/beer_impl.dart';
// import 'package:unshelled/app/modules/home/viewModel/beer_viewmodel.dart';

// // Mock BeerRepositoryImpl class using Mockito
// class MockBeerRepositoryImpl extends Mock implements BeerRepositoryImpl {}

// void main() {
//   group('BeerListModel Tests', () {
//     test('fetchBeers should populate beers list', () async {
//       final mockRepository = MockBeerRepositoryImpl();
//       final beerListModel = BeerListModel();

//       // Mock the fetchBeers method of the repository to return some sample data
//       when(mockRepository.fetchBeers(currentPage: 1)).thenAnswer((_) async => [Beermodel(), Beermodel()]);

//       // Call the fetchBeers method of the ViewModel
//       await beerListModel.fetchBeers();

//       // Verify that _beers list is populated with data
//       expect(beerListModel.beers.length, 2);
//     });

//     test('fetchMoreBeers should add more beers to the list', () async {
//       final mockRepository = MockBeerRepositoryImpl();
//       final beerListModel = BeerListModel();

//       // Mock the fetchBeers method of the repository to return some sample data
//       when(mockRepository.fetchBeers(currentPage: 1))
//           .thenAnswer((_) async => [Beermodel(), Beermodel()]);

//       // Call the fetchMoreBeers method of the ViewModel
//       await beerListModel.fetchMoreBeers();

//       // Verify that _beers list is populated with additional data
//       expect(beerListModel.beers.length, 2);

//       // Call the fetchMoreBeers method again to fetch more data
//       await beerListModel.fetchMoreBeers();

//       // Verify that _beers list now contains more items
//       expect(beerListModel.beers.length, 4);
//     });

//     test('fetchBeers should handle errors', () async {
//       final mockRepository = MockBeerRepositoryImpl();
//       final beerListModel = BeerListModel();

//       // Mock the fetchBeers method of the repository to throw an error
//       when(mockRepository.fetchBeers(currentPage: 1)).thenThrow(Exception('Test Error'));

//       // Call the fetchBeers method of the ViewModel
//       await beerListModel.fetchBeers();

//       // Verify that _isLoading is set to false after an error
//       expect(beerListModel.isLoading, false);
//     });

//   });
// }
