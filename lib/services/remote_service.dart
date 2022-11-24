import 'package:ubsprofessional/models/post.dart';
import 'package:http/http.dart';
import 'package:ubsprofessional/views/homepage.dart';

class RemoteService{
  Future<List<Post>?>getPosts() async
  {
    var http;
    var client= http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
     var response = await client.get(uri);
     if (response.statusCode ==200){
       var json = response.body;
       return postFromJson(json);
     }
  }
}