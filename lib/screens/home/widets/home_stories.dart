import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/config/palette.dart';
import 'package:flutter_facebook_ui/models/models.dart';
import 'package:flutter_facebook_ui/models/story_model.dart';
import 'package:flutter_facebook_ui/screens/home/widets/profile_avatar.dart';

class HomeStories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;
  const HomeStories({
    Key key,
    @required this.currentUser,
    @required this.stories,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 200,
          color: Colors.white,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 8,
            ),
            itemCount: 1 + stories.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return _StoryCard(
                  isAddStory: true,
                  currentUser: currentUser,
                );
              }
              final Story story = stories[index - 1];
              return _StoryCard(
                story: story,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currentUser;
  final Story story;

  const _StoryCard({
    Key key,
    this.isAddStory = false,
    this.currentUser,
    this.story,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
              height: double.infinity,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: 110,
            decoration: BoxDecoration(
              gradient: Palette.storyGradient,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: isAddStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                      color: Palette.facebookBlue,
                      onPressed: () {},
                    ),
                  )
                : CircleAvatar(
                    radius: 20,
                    backgroundColor: Palette.facebookBlue,
                    child: ProfileAvatar(
                      radius: 17,
                      imageUrl: story.user.imageUrl,
                    ),
                  ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            left: 8,
            child: Text(
              isAddStory ? "Add to story" : story.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
