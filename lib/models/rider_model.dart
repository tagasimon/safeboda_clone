import 'package:flutter/cupertino.dart';

class RiderModel with ChangeNotifier {
  final String id;
  final String name;
  final String phone;
  final String helmentId;

  RiderModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.helmentId,
  });
}
