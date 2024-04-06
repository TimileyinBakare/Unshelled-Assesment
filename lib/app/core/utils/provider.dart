import 'package:provider/provider.dart';
import 'package:unshelled/app/core/data/network/conectivity.dart';
import 'package:unshelled/app/modules/home/viewModel/beer_viewmodel.dart';

class AppProviders {
  static List<ChangeNotifierProvider> get providers => [
    ChangeNotifierProvider(create: (_) => BeerListModel()),
    ChangeNotifierProvider(create: (_) => NetworkMonitor()),
  ];
}