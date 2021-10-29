import 'package:flutter/material.dart';
import '../models/circle.dart';

class CircleWidget extends StatelessWidget {
  final Circle circle;
  final VoidCallback addCircle;

  CircleWidget(this.circle, this.addCircle);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: circle.top,
      left: circle.left,
      child: Container(
        width: 100,
        height: 100,
        child: circle.icon == null
            ? Container()
            : IconButton(
                icon: Icon(circle.icon),
                onPressed: addCircle,
              ),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2.0,
            ),
            shape: BoxShape.circle,
            color: Colors.blue),
      ),
    );
  }
}
