import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/rover.controller.dart';
class CardTopWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var rover;
    return GetX<RoverController>(
          builder:(_){
            print(_.rover.name);
            return Container(
        child: Text(_.rover.name, style: TextStyle(color: Colors.white),),
      );} 
    );
  }
}