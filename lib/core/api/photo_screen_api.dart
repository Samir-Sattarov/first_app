import 'dart:convert';

import 'package:first_app/core/api/api_constants.dart';
import 'package:first_app/entity/photo_entity.dart';
import 'package:http/http.dart';

class PhotoScreenApi {
  static Future<List<PhotoEntity>> getPhoto() async {
    final http = Client();
    const path = "${ApiConstants.baseUrl}${ApiConstants.photos}";
    final response = await http.get(
      Uri.parse(path),
    );

    final responseBody = jsonDecode(response.body);

    print("response body $responseBody");

    final List<PhotoEntity> photo =
        List.from(responseBody).map((json) => PhotoEntity.fromJson(json)).toList();

    return photo;
  }
}
