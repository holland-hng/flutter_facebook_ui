import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/data/data.dart';
import 'package:flutter_facebook_ui/screens/home/widets/create_post-container.dart';
import 'package:flutter_facebook_ui/screens/home/widets/home_appbar.dart';
import 'package:flutter_facebook_ui/screens/home/widets/room.dart';
import 'package:flutter_facebook_ui/screens/home/widets/home_stories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppbar(),
          CreatePostContainer(currentUser: currentUser),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            sliver: SliverToBoxAdapter(
              child: Room(onlineUsers: onlineUsers),
            ),
          ),
          HomeStories(
            currentUser: currentUser,
            stories: stories,
          ),
        ],
      ),
    );
  }
}
