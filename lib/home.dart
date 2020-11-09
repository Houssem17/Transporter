import 'package:flutter/material.dart';
import 'file:///E:/FlutterProj/project_app/lib/models/post_model.dart';
import 'file:///E:/FlutterProj/project_app/lib/models/user_model.dart';
import './http_service.dart';

class Home extends StatelessWidget {
  final User user;
  Home(this.user);
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {/*
    return Scaffold(
      appBar: user.location == "none"
          ? AppBar(
              title: Text('${user.name}:User'),
            )
          : AppBar(
              title: Text('${user.name}:Transporter'),
            ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            print(user.name);
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts
                  .map((Post post) => ListTile(
                        title: Text(post.description),
                        subtitle: Text(post.state.toString()),
                      ))
                  .toList(),
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );*/
  }
}
