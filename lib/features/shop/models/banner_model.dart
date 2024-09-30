import 'package:cloud_firestore/cloud_firestore.dart';

class BannerModel {
  String imageUrl;
  final String targetScreen;
  final bool active;

  BannerModel(
      {required this.targetScreen,
      required this.active,
      required this.imageUrl});

  Map<String, dynamic> toJson() {
    return {
      'ImageUrl': imageUrl,
      'TargetScreen': targetScreen,
      'Active': active,
    };
  }

  factory BannerModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;

    return BannerModel(
      targetScreen: data['TargetScreen'] ?? '',
      active: data['Active'] ?? '',
      imageUrl: data['ImageUrl'] ?? false,
    );
  }
}
