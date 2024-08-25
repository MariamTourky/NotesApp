import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  const CustomIcon({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
   bool isPressed=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: () {
          setState(() {
            isPressed=true;
          });
        },
        icon: Icon(
          widget.icon,
          size: 28,
          color: isPressed?Colors.amber:Colors.grey,
        ),
      ),
    );
  }
}