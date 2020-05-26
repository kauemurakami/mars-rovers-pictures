import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/rover.controller.dart';

class CardTopWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetX<RoverController>(
      init: RoverController(),
      global: false,
      builder: (_){
        return Text(_.rover.photos[0].rover.name);
      },
    );
  }
}