import 'package:flutter/material.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(6.0)),
      child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }
}
