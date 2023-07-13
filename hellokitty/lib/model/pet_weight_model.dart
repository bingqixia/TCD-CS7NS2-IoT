// To parse this JSON data, do
//
//     final petWeightModel = petWeightModelFromJson(jsonString);

import 'dart:convert';

PetWeightModel petWeightModelFromJson(String str) =>
    PetWeightModel.fromJson(json.decode(str));

String petWeightModelToJson(PetWeightModel data) => json.encode(data.toJson());

class PetWeightModel {
  PetWeightModel({
    required this.data,
    required this.error,
    required this.message,
  });

  List<PetWeight> data;
  bool error;
  String message;

  factory PetWeightModel.fromJson(Map<String, dynamic> json) => PetWeightModel(
        data: List<PetWeight>.from(
            json["data"].map((x) => PetWeight.fromJson(x))),
        error: json["error"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "error": error,
        "message": message,
      };
}

class PetWeight {
  PetWeight({
    required this.id,
    required this.index,
    required this.weight,
    required this.weightDate,
  });

  int id;
  int index;
  double weight;
  DateTime weightDate;

  factory PetWeight.fromJson(Map<String, dynamic> json) => PetWeight(
        id: json["id"],
        index: json["index"],
        weight: json["weight"]?.toDouble(),
        weightDate: DateTime.parse(json["weight_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "index": index,
        "weight": weight,
        "weight_date":
            "${weightDate.year.toString().padLeft(4, '0')}-${weightDate.month.toString().padLeft(2, '0')}-${weightDate.day.toString().padLeft(2, '0')}",
      };
}
