import 'package:flutter/material.dart';

export 'circel_button.dart';

class CircelButton extends StatelessWidget {
  const CircelButton({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final IconData icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: 30,
        color: Colors.black,
        onPressed: press,
      ),
    );
  }
}
