import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:medicines_manager_app/domain/datasources/medicine_storage_datasource.dart';
import 'package:medicines_manager_app/domain/entities/medicine.dart';

class IsarDatasource extends MedicineStorageDatasource {

  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [ MedicineSchema ],
        inspector: true, 
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Future<List<Medicine>> loadMedicine() async {
    final isar = await db;

    return isar.medicines.where()
    .findAll();
  }

  @override
  Future<void> registerMedicine(Medicine medicine) async {
    final isar = await db;

    isar.writeTxnSync(() => isar.medicines.putSync(medicine));
  }
}