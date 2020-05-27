import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/rover.controller.dart';

class CardBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<RoverController>(
      init: RoverController(),
      builder: (_) {
      return Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width / 1.1,
        child: Text(_.getPhotosRover()),
      );
    });
  }
 
}
