import 'package:medicines_manager_app/domain/datasources/medicine_storage_datasource.dart';
import 'package:medicines_manager_app/domain/entities/medicine.dart';
import 'package:medicines_manager_app/domain/repositories/medicine_storage_repository.dart';

class MedicineStorageRepositoryImpl extends MedicineStorageRepository {

  final MedicineStorageDatasource medicineStorageDatasource;

  MedicineStorageRepositoryImpl({
    required this.medicineStorageDatasource,
  });

  @override
  Future<List<Medicine>> loadMedicine() {
    return medicineStorageDatasource.loadMedicine();
  }

  @override
  Future<void> registerMedicine(Medicine medicine) {
    return medicineStorageDatasource.registerMedicine(medicine);
  } 
}