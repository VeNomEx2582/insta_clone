import 'package:flutter/material.dart';
import 'package:instagram/utils/bubble_storise.dart';
import 'package:instagram/utils/user_posts.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final List pepole = [
    'kapil',
    'harish',
    'aakash',
    'nikhil',
    'ashutosh',
    'jatin',
    'kapil',
    'harish',
    'aakash',
    'nikhil',
    'ashutosh',
    'jatin',
    'jagdish',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.share),
                ),
                Icon(Icons.favorite),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pepole.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: pepole[index]);
              },
            ),
          ),

          //posts
          Expanded(
            child: ListView.builder(
                itemCount: pepole.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: pepole[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
