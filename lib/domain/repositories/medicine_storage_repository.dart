import 'package:medicines_manager_app/domain/entities/medicine.dart';

abstract class MedicineStorageRepository {
  Future<void> registerMedicine(Medicine medicine);
  Future<List<Medicine>> loadMedicine();
}
