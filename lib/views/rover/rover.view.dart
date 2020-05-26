import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';
import 'package:mars_rovers_images/views/rover/components/card_bottom.view.dart';
import 'package:mars_rovers_images/views/rover/components/card_top.view.dart';
import 'package:slimy_card/slimy_card.dart';

class RoverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(
        global: true,
        builder: (_) {
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
