import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TodoProvider extends ChangeNotifier {
  final HttpClient = http.Client();
  late List<dynamic> todoData;

  // Get Request

  Future fetchData() async {
    final Uri restAPIURL =
        Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
    http.Response response = await HttpClient.get(restAPIURL);

    final Map parseData = await json.decode(response.body.toString());
    todoData = parseData['data'];
    print(todoData);
  }
}
