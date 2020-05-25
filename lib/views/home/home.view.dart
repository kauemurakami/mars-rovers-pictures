import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';
import 'package:mars_rovers_images/theme/appTheme.dart';
import 'package:mars_rovers_images/views/rover/rover.view.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return GetMaterialApp(
        home: DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: appThemeData.accentColor,
                elevation: 0,
                bottom: TabBar(
                    onTap: (value) {
                      switch(value){
                        case 0:
                          controller.selectedRover = 'curiosity';
                        break;
                        case 1:
                        controller.selectedRover = 'spirit';
                        break;
                        case 2:
                        controller.selectedRover = 'opportunity';
                        break;
                      }

                    },
                    labelColor: appThemeData.accentColor,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("CURIOSITY"),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("SPIRIT"),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("OPPORTUNITY"),
                        ),
                      ),
                    ]),
              ),
              body: TabBarView(
                children: [
                RoverView(),
                RoverView(),
                RoverView(),
              ]),
            )));
  }
}
