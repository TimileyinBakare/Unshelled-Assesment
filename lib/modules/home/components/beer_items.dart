// beer_list_item.dart

import 'package:flutter/material.dart';
import 'package:unshelled/data/model/beer_model.dart';

import '../../../utils/beer_helper.dart';
import '../../../utils/logger.dart';

class BeerListItem extends StatelessWidget {
  final Beermodel? beer;

  const BeerListItem({super.key, this.beer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        logger.i("Name of Beer clicked ${beer?.name}");
        showBeerDetail(context, beer!);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              beer?.name ?? '',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Type: ${beer?.breweryType ?? ''}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 2),
            Text(
              'Address: ${beer?.address1 ?? ''}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 2),
            Text(
              'Phone: ${beer?.phone ?? ''}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 2),
            Text(
              'Postcode: ${beer?.postalCode ?? ''}',
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
