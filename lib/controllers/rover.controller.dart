import 'package:get/get.dart';
import 'package:mars_rovers_images/controllers/home.controller.dart';

class RoverController extends RxController {
  final _a = 'b'.obs;
  get a => this._a.value;
  set a(a) => this._a.value = a;

  getPhotosRover() {
    a = Get.find<HomeController>().a;
    print(a);
    return a;
  }

}
