import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';

class CardTopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (_) {
      return Container(
        child: Column(
          children: <Widget>[
            Text(_.selectedRover.value.toUpperCase(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 3.9,
              child: Image.asset('assets/images/${_.selectedRover.value}.jpg', fit: BoxFit.fill),
              ),
          ],
        ),
      );
    });
  }
}
