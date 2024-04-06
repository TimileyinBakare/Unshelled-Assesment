// beer_detail_helpers.dart

import 'package:flutter/material.dart';
import 'package:unshelled/data/model/beer_model.dart';
import 'package:url_launcher/url_launcher.dart';

void showBeerDetail(BuildContext context, Beermodel beer) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(beer.name ?? ''),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Type: ${beer.breweryType ?? ''}'),
            const SizedBox(height: 4),
            Text('Address: ${beer.address1 ?? ''}'),
            const SizedBox(height: 4),
            Text('Phone: ${beer.phone ?? ''}'),
            const SizedBox(height: 4),
            Text('Postcode: ${beer.postalCode ?? ''}'),
            const SizedBox(height: 4),
            GestureDetector(
              onTap: () {
                launchURL(beer.websiteUrl ?? '');
              },
              child: Text(
                beer.websiteUrl ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}

void launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
