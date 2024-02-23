import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medicines_manager_app/data/datasources/isar_datasource.dart';
import 'package:medicines_manager_app/data/repositories/medicine_storage_repository.dart';

final medicineStorageRepositoryProvider = Provider((ref) {
  final isarDatasource = IsarDatasource();
  return MedicineStorageRepositoryImpl(medicineStorageDatasource: isarDatasource);
});
