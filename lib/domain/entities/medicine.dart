import 'package:isar/isar.dart';

part 'medicine.g.dart';

@collection
class Medicine {
  Id? isarId;

  final String name;
  final String description;
  final int expirationDate;
  final int count;

  Medicine({
    required this.name,
    required this.description,
    required this.expirationDate,
    required this.count,
  });
}
