import 'package:flutter/material.dart';
import 'package:mars_rovers_images/theme/appTheme.dart';
import 'package:get/get.dart';
import 'views/home/home.view.dart';

void main() { 
  runApp(
  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      theme: appThemeData,
    )
  );
}
