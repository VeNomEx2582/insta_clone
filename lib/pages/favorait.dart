import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/utils/explore_gride.dart';
import 'package:instagram/utils/shop_gride.dart';

class UserFAvorait extends StatefulWidget {
  const UserFAvorait({super.key});

  @override
  State<UserFAvorait> createState() => _UserFAvoraitState();
}

class _UserFAvoraitState extends State<UserFAvorait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  color: Colors.grey[500],
                ),
                Container(
                  child: Text(
                    'search',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ShopeGrid(),
    );
  }
}
