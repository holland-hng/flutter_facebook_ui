import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/models.dart';

class Room extends StatelessWidget {
  @override
  final List<User> onlineUser;
  const Room({
    Key key,
    @required this.onlineUser,
    List<User> onlineUsers,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container();
  }
}
