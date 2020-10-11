import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/models.dart';
import 'package:flutter_facebook_ui/screens/home/widets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 8, 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text('Live')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text('Photo')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text('Room'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
