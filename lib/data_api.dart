import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List posts = [];

  Future<void> fetchData() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts')
    );

    if(response.statusCode == 200) {
      setState(() {
        posts = json.decode(response.body);
      });
    }
  }

   @override
    void initState() {
      super.initState();
      fetchData();
    }
 
    @override
      Widget build(BuildContext context) {
        return Scaffold(
       appBar: AppBar(title: Text('Data Api')),
       body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(posts[index]['title']),
            subtitle: Text(posts[index]['body']),
          );
        },
      ),
    );
  }
}