import 'package:get/get.dart';
import 'package:mars_rovers_images/models/data.dart';

import 'home.controller.dart';

class RoverController extends RxController {

  var rover = Rover().obs;

  getRover() async{
     rover = await Get.find<HomeController>().photos[0].rover;
  }

}

