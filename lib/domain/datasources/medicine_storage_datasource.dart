import 'package:medicines_manager_app/domain/entities/medicine.dart';

abstract class MedicineStorageDatasource {
  Future<void> registerMedicine(Medicine medicine);
  Future<List<Medicine>> loadMedicine();
}
