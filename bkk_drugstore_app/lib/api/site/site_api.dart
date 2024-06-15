import 'dart:convert';
import 'package:bkk_drugstore_app/core/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class SiteAPI {
  Future<List<SiteEntity>> getSiteList() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:4433/site'));
      final data = await json.decode(response.body);
      return data.map<SiteEntity>((e) => SiteEntity.fromJson(e)).toList();
    } catch (e) {
      debugPrint('Err $e');
      return [];
    }
  }
}
