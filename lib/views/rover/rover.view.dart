import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';

class RoverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(builder: (_) {
        var a = _.getPhotos();
        print(a);
        return Text(_.selectedRover.value);
      }),
    );
  }
}
