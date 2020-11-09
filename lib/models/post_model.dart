import 'package:flutter/foundation.dart';

class Post {
  final String userId;
  final int state;
  final String transporterId;
  final String date;
  final String startingPoint;
  final String arrivalPoinst;
  final int weight;
  final String description;

  Post(
      {@required this.userId,
      @required this.state,
      @required this.transporterId,
      @required this.date,
      @required this.startingPoint,
      @required this.arrivalPoinst,
      @required this.weight,
      @required this.description});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        arrivalPoinst: json['arrivalPoint'] as String,
        date: json['date'] as String,
        transporterId: json['transporter_id'] as String,
        state: json['etat'] as int,
        startingPoint: json['startingPoint'] as String,
        userId: json['user_id'] as String,
        weight: json['weight'] as int,
        description: json['description'] as String);
  }
}
