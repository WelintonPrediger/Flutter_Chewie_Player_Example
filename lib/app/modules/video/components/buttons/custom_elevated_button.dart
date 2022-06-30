import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {

  final String title;
  final GestureTapCallback onTap;

  const CustomElevatedButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15.0)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)))
      ),
      onPressed: widget.onTap,
      child: Text(widget.title)
    );
  }
}
