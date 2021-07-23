import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:node/provider/todo_provider.dart';
// import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final url = "https://jsonplaceholder.typicode.com/comments";

  var _postsJson = [];

  void fetchPosts() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      setState(() {
        _postsJson = jsonData;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: _postsJson.length,
            itemBuilder: (context, i) {
              final post = _postsJson[i];
              return Text(
                "Title: ${post["email"]}\n body: ${post["body"]}\n\n",
                style: TextStyle(color: Colors.teal, fontSize: 20),
              );
            }),
        appBar: AppBar(
          title: Text("Title"),
          centerTitle: true,
        ),
      ),
    );
  }
}
