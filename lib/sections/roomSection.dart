import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
            ),
            child: OutlinedButton.icon(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              icon: Icon(Icons.video_call),
              label: Text(
                'Create Room',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                print('Create a chat room!');
              },
            ),
          )
        ],
      ),
    );
  }
}
