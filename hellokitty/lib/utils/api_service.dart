import 'dart:developer';

import 'package:http/http.dart' as http;
import './constants.dart';
import '../model/pet_weight_model.dart';

class ApiService {
  Future<List<PetWeight>?> getPetWeight() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.getWeight);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        PetWeightModel model = petWeightModelFromJson(response.body);
        List<PetWeight> data = model.data;
        return data;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
