import 'package:flutter/material.dart';

class KContainer extends StatelessWidget {
  final double height;
  final Color bgColor;
  final Widget child;
  final double margin;
  final double padding;
  const KContainer({
    Key? key,
    this.height = 300,
    this.bgColor = Colors.white,
    this.margin = 20,
    this.padding = 15,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: margin,
        left: margin,
        right: margin,
      ),
      child: Container(
        width: double.infinity,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
