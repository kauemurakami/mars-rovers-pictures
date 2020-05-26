import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/rover.controller.dart';
class CardTopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<RoverController>(
          builder:(_){
            return Container(
        child: Text('a', style: TextStyle(color: Colors.white),),
      );} 
    );
  }
}