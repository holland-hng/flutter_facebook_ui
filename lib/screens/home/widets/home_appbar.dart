import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/config/palette.dart';
import 'package:flutter_facebook_ui/widgets/circel_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      title: Text(
        'facebook',
        style: TextStyle(
          color: Palette.facebookBlue,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
      centerTitle: false,
      floating: true,
      actions: [
        CircelButton(
          icon: Icons.search,
          press: () {},
        ),
        CircelButton(
          icon: MdiIcons.facebookMessenger,
          press: () {},
        ),
      ],
    );
  }
}
