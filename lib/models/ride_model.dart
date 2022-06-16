import 'package:flutter/cupertino.dart';

class RideModel with ChangeNotifier {
  final String id;
  final DateTime date;
  final String paymentMethod;
  final double charge;
  final String pickUp;
  final String dropOff;
  final Duration duration;
  final String riderId;
  final String receiptId;

  RideModel({
    required this.id,
    required this.date,
    required this.paymentMethod,
    required this.charge,
    required this.pickUp,
    required this.dropOff,
    required this.duration,
    required this.riderId,
    required this.receiptId,
  });
}
