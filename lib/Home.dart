import 'package:flutter/material.dart';
import 'package:mallu_developer/sections/headerButtonSection.dart';
import 'package:mallu_developer/sections/roomSection.dart';
import 'package:mallu_developer/sections/statusSection.dart';
import 'package:mallu_developer/widgets/appBarButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('Search screen appears!');
              },
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print('Messenger appears!');
              },
            )
          ],
        ),
        body: ListView(children: [
          StatusSection(),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          HeaderButtonSection(),
          Divider(
            thickness: 10,
            color: Colors.grey,
          ),
          RoomSection(),
        ],),
      ),
    );
  }
}
