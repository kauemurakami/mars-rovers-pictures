import 'package:get/get.dart';
import 'package:mars_rovers_images/repositories/nasa.repository.dart';

class HomeController extends RxController{
  final NasaRepository nasaRepository = NasaRepository();

  final _selectedRover = ''.obs;
  get selectedRover => this._selectedRover;
  set selectedRover(rover) => this._selectedRover.value = rover;

  getPhotos(){
    var photos = nasaRepository.getPhotos();
    return photos;
  }

}