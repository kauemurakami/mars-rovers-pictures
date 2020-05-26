import 'package:get/get.dart';
import 'package:mars_rovers_images/models/data.dart';
import 'package:mars_rovers_images/repositories/nasa.repository.dart';

class HomeController extends RxController{
  final NasaRepository nasaRepository = NasaRepository();

  final _selectedRover = 'spirit'.obs;
  get selectedRover => this._selectedRover;
  set selectedRover(rover) => this._selectedRover.value = rover;

  List<Data> _photos;
  get photos => this._photos;
  set photos(value) => this._photos = value;

  getPhotos() async{
    photos = await nasaRepository.getPhotos(rover: selectedRover.value);
    print(photos);
    return this._photos;
  }


}