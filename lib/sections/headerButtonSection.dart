import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider =  VerticalDivider(
      thickness: 1,
      color: Colors.grey,
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: 'Live',
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print('Go live!');
              },
              buttonColor: Colors.red),
          verticalDivider,
          headerButton(
              buttonText: 'Photo',
              buttonIcon: Icons.photo_library,
              buttonAction: () {
                print('fake photo!');
              },
              buttonColor: Colors.green),
          verticalDivider,
          headerButton(
              buttonText: 'Room',
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print('create chatroom!');
              },
              buttonColor: Colors.purple),

        ],
      ),
    );
  }
}
