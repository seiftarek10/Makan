import 'package:makan/features/home/domain/entities/continet_entity.dart';

class ContinentModel {
  final String id;
  final String name;
  final int numberOfCountries;
  final String photoUrl;

  ContinentModel({
    required this.id,
    required this.name,
    required this.numberOfCountries,
    required this.photoUrl,
  });

  factory ContinentModel.fromJson(Map<String, dynamic> json) {
    return ContinentModel(
      id: json['id'],
      name: json['name'],
      numberOfCountries: 20,
      photoUrl: json['internetImage'],
    );
  }

  ContinetEntity toEntity() {
    return ContinetEntity(
      name: name,
      numberOfCountries: numberOfCountries,
      imageUrl: photoUrl,
    );
  }
}
