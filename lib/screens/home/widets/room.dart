import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/config/palette.dart';
import 'package:flutter_facebook_ui/models/models.dart';
import 'package:flutter_facebook_ui/screens/home/widets/profile_avatar.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;
  const Room({
    Key key,
    @required this.onlineUsers,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _CreateRoomButton(),
            );
          }
          User user = onlineUsers[index - 1];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isActive: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 3,
        color: Colors.blueAccent[100],
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text("Create\nRoom")
        ],
      ),
    );
  }
}
