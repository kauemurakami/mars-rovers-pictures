
import 'package:http/http.dart' as http;
import 'package:mars_rovers_images/models/data.dart';
import 'dart:convert';

const API_KEY = 'Q7ZhRDudB7Lkxa0dDL23mf25HoJWEikchqnIVbYa';
const BASE_URL = 'https://api.nasa.gov/mars-photos/api/v1/rovers';
const X = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&page=2&api_key=DEMO_KEY';
class NasaRepository{
  NasaRepository();

  Future<List<Data>> getPhotos({String rover, int page = 1, int sol = 1000}) async {
    http.Response response = await http.get('https://api.nasa.gov/mars-photos/api/v1/rovers/$rover/photos?sol=$sol&page=$page&api_key='+API_KEY);
    if(response.statusCode == 200){
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<Data> photos = dadosJson["photos"].map<Data>((map){
        return Data.fromJson(map);
      }).toList();
      return photos;
    }else { print('sem retorno');}
  }
}