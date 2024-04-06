import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unshelled/modules/home/components/beer_items.dart';
import 'package:unshelled/data/model/beer_model.dart';
import 'package:unshelled/modules/home/viewModel/beer_viewmodel.dart';

import '../../../data/service/conectivity.dart';

class BeerListView extends StatelessWidget {
  const BeerListView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldKey =
        GlobalKey<ScaffoldMessengerState>();

    return Consumer2<BeerListModel, NetworkMonitor>(
      builder: (context, model, networkMonitor, child) {
        if (networkMonitor.isConnected) {
          scaffoldKey.currentState?.showSnackBar(
            SnackBar(
              content: Text('Connected to ${networkMonitor.connectionStatus}'),
              duration: const Duration(seconds: 3),
            ),
          );
        } else {
          scaffoldKey.currentState?.showSnackBar(
            SnackBar(
              content: const Text('No Internet Connection'),
              duration: const Duration(seconds: 3),
              action: SnackBarAction(
                label: 'Retry',
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
            ),
          );
        }

        return ScaffoldMessenger(
          key: scaffoldKey,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Beer List',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            body: model.isLoading && model.beers.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification scrollInfo) {
                      if (!model.isLoading &&
                          scrollInfo.metrics.pixels ==
                              scrollInfo.metrics.maxScrollExtent) {
                        model.fetchMoreBeers();
                        return true;
                      }
                      return false;
                    },
                    child: ListView.builder(
                      itemCount: model.beers.length + 1,
                      itemBuilder: (context, index) {
                        if (index < model.beers.length) {
                          final Beermodel beer = model.beers[index];
                          return BeerListItem(beer: beer);
                        } else {
                          return const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
          ),
        );
      },
    );
  }
}
