import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';

class CardBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      builder: (_){
        return Text('a');
      }
    );
  }
}