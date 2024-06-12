import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  late String imgPath;

  Detay({required this.imgPath}) {}

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.imgPath,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              widget.imgPath,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
