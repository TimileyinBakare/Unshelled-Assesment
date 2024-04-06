import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unshelled/data/service/conectivity.dart';
import 'package:unshelled/modules/home/viewModel/beer_viewmodel.dart';
import 'package:unshelled/modules/home/view/beer_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (_) => BeerListModel()),
    ChangeNotifierProvider(create: (_) => NetworkMonitor()),
     ],
      child: MaterialApp(
        title: 'Unshelled Assessment',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BeerListView(),
      ),
    );
  }
}