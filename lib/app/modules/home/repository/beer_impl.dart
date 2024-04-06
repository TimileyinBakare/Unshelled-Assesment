import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:unshelled/app/core/data/apis.dart';
import 'package:unshelled/app/modules/home/model/beer_model.dart';

import '../../../core/utils/error.dart';
import '../../../core/utils/logger.dart';
import 'interface/beer_repo.dart';

class BeerRepositoryImpl implements BeerRepository {
  @override
  Future<List<Beermodel>> fetchBeers({required int currentPage}) async {
    try {
      final response = await http
          .get(Uri.parse("${Endpoints.liveUrl}?page=$currentPage&per_page=8"));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body) as List<dynamic>;
        logger.i(jsonData);
        return jsonData.map((item) => Beermodel.fromJson(item)).toList();
      } else {
        throw ExceptionHelper.getHttpException(response.statusCode);
      }
    } on http.ClientException catch (error) {
      throw Exception('Failed to fetch beers: $error');
    } catch (error) {
      throw Exception('Failed to fetch beers: $error');
    }
  }
}
