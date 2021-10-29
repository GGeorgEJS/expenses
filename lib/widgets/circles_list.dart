import 'package:expenses_startup/widgets/circles_item.dart';
import 'package:flutter/material.dart';
import '../models/circle.dart';

class Cirles extends StatefulWidget {
  const Cirles({Key? key}) : super(key: key);

  @override
  _CirlesState createState() => _CirlesState();
}

class _CirlesState extends State<Cirles> {
  var count = 0.0;
  final List<Circle> circles = [
    Circle(top: 25.0, left: 25.0, icon: Icons.add),
    Circle(top: 105.0, left: 125.0),
    Circle(top: 275.0, left: 25.0),
  ];

  void addCircle() {
    final left = 0.0 + count;
    count += 50.0;
    setState(() {
      circles.add(Circle(top: 500.0, left: left));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
                shape: BoxShape.circle,
                color: Colors.purple),
          ),
        ),
      ),
      ...circles.map((circle) {
        return CircleWidget(circle, addCircle);
      }),
    ]);
  }
}
