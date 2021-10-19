import 'package:hacker_news/src/resources/news_api_provider.dart';
import 'dart:convert';
import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

// void main(){
//   test('checking out expectations', (){
//     //setting up a test case
//      final sum = 1 + 3;

//     //expectations
//     expect(sum, 4);

//   });
// }

void main(){

  //test for fetchTopIds
  test('fetching top news', () async {
      //setting up a test case
      final newsApi = NewsApiProvider();
      newsApi.client = MockClient((request) async{
         return Response(json.encode([1, 2, 3, 4]), 200);
      });
      final ids = await newsApi.fetchTopIds();
     
      //expectations
      expect(ids, [1, 2, 3, 4]);
      
   }
  );

  //test for fetchItem
  test('fetching a particular news', () async {

    //setting up a test case
    final newsApi = NewsApiProvider();
    newsApi.client = MockClient((request) async{
      final jsonMap = {'id': 123};
      return Response(json.encode(jsonMap), 200);
    });
    final item = await newsApi.fetchItem(45);
 
    //expectations
    expect(item.id, 123);
  }
 );
}