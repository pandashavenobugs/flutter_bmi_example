import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({Key? key}) : super(key: key);

  ReusableCard({@required this.color, @required this.cardChild, this.onPress});
  final Color? color;
  final Widget? cardChild;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        // width: 170,
        // height: 200.0,
      ),
    );
  }
}
