import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';
import 'package:mars_rovers_images/controllers/rover.controller.dart';

class CardTopWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetX<RoverController>(
      init: RoverController(),
      builder: (_){
        return Column(
          children: <Widget>[
            Text(Get.find<HomeController>().selectedRover.value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        );
      },
    );
  }
}