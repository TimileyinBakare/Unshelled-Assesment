import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unshelled/app/core/utils/provider.dart';
import 'package:unshelled/app/modules/home/view/beer_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: AppProviders.providers,
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