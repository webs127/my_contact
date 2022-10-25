import 'dart:ui';
import 'package:uuid/uuid.dart';
import '../Presentation/Resources/color_manager.dart';

class Contact {
  final String itemName;
  final String phoneNumber;
  final String uid;
  final Color color;
  Contact({required this.itemName, required this.phoneNumber})
      : uid = Uuid().v4(),
        color = ColorManager.generateRandomColors();
}
