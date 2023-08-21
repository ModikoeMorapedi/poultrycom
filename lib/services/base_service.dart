import 'dart:convert';

import 'package:http/http.dart' as http;

class BaseService {
  Future getAsync(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return jsonDecode(response.statusCode.toString());
      }
    } catch (err) {
      throw Exception();
    }
  }
}
