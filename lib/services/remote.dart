import 'package:flutter_application_1/models/post.dart';
import 'package:http/http.dart' as http;

class Remote {
  Future<List<Post>?> getPost() async {
    var client = http.Client();

    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var jason = response.body;
      return postFromJson(jason);
    }
    return null;
  }
}
