import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key key,
    @required this.imageUrl,
    this.isActive = false,
    this.radius = 20,
  }) : super(key: key);

  final String imageUrl;
  final bool isActive;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: Colors.grey[200],
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
        isActive
            ? Positioned(
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Palette.online,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                bottom: 0,
                right: 0,
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
