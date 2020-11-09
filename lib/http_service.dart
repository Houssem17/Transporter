import 'dart:convert';
import 'package:http/http.dart';
import 'file:///E:/FlutterProj/project_app/lib/models/user_model.dart';
import 'models/post_model.dart';

class HttpService {
  final String url = "http://10.0.2.2:3000";

  Future<List<Post>> getPosts() async {
    Response res = await get('$url/posts');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw "cant get Posts!";
    }
  }

  Future<User> register(String email, String password, String name,
      String phoneNumber, String carNumber, String state) async {
    Response res = await post('$url/auth/register', body: {
      "email": email,
      "name": name,
      "password": password,
      "phoneNumber": phoneNumber,
      "carNumber": carNumber,
      "state": state
    });
    if (res.statusCode == 200) {
      print('res.status = 200');
      dynamic body = jsonDecode(res.body);
      return User.fromJson(body);
    } else {
      print('res.status NOT 200');
      print(res.body);
      throw "cant get User register!";
    }
  }

  Future<User> login(String email, String password) async {
    Response res = await post('$url/auth/login',
        body: {"email": email, "password": password});

    if (res.statusCode == 200) {
      print('res.status = 200');

      dynamic body = jsonDecode(res.body);
      return User.fromJson(body);
    } else {
      print('res.status NOT 200');
      print(res.body);
      throw "cant get User login!";
    }
  }
}
