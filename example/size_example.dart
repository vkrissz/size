import 'dart:io';

import 'package:size/size.dart';

void main() async {
  final sizes = Sizes();
  final cwd = Directory.current.absolute;
  final empty = await cwd.is_empty();
  final available = sizes.getAvailableDiskSpace(cwd.path);
  final capacity = sizes.getDiskCapacity(cwd.path);
  final freeSpace = sizes.getFreeDiskSpace(cwd.path);
  print("Current dir (${cwd.path}) sizes:\n"
      "Empty: $empty\n"
      "Available: $available\n"
      "Capacity: $capacity\n"
      "Free space: $freeSpace");
}
