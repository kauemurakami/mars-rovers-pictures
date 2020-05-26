import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';
import 'package:mars_rovers_images/controllers/rover.controller.dart';
import 'package:mars_rovers_images/views/rover/components/card_bottom.view.dart';
import 'package:mars_rovers_images/views/rover/components/card_top.view.dart';
import 'package:slimy_card/slimy_card.dart';

class RoverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RoverController x;
    return Scaffold(
      body: GetX<HomeController>(builder: (_) {
        x = Get.put(RoverController());
        x.rover = _.photos[0].rover;
        return ListView(
          padding: EdgeInsets.only(top: 1),
          children: <Widget>[
            SlimyCard(
              color: Colors.black,
              width: MediaQuery.of(context).size.width / 1.01,
              topCardHeight: MediaQuery.of(context).size.height / 3.1,
              bottomCardHeight: 200,
              borderRadius: 15,
              topCardWidget: CardTopWidget(),
              bottomCardWidget: CardBottomWidget(),
              slimeEnabled: true,
            ),
          ],
        );
      }),
    );
  }
}
