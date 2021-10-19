import 'package:http/http.dart' show Client;
import '../models/item_model.dart';
import 'dart:convert';

final _root = "https://hacker-news.firebaseio.com/v0";

class NewsApiProvider{
  Client client = new Client();

  //fetch top news
  fetchTopIds() async {
     final response = await client.get(Uri.parse('$_root/topstories.json'));
     final ids = json.decode(response.body);

     return ids;
  }

  //fetch a particular news
  fetchItem(int id) async{
    final response = await client.get(Uri.parse('$_root/item/$id.json'));
    final parsedJson = json.decode(response.body);

    return ItemModel.fromJson(parsedJson);
  }
}