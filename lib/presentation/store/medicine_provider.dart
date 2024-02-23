import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:medicines_manager_app/domain/entities/medicine.dart';
import 'package:medicines_manager_app/domain/repositories/medicine_storage_repository.dart';

import 'medicine_storage_provider.dart';

final medicineProvider = StateNotifierProvider<MedicineNotifier, List<Medicine>>((ref) {

  final medicineStorageRepository = ref.watch(medicineStorageRepositoryProvider);
  return MedicineNotifier(medicineStorageRepository: medicineStorageRepository);
});

class MedicineNotifier extends StateNotifier<List<Medicine>> {
  final MedicineStorageRepository medicineStorageRepository;

  MedicineNotifier({
    required this.medicineStorageRepository,
  }) : super([]);

  Future<void> loadMedicines() async {
    final medicines = await medicineStorageRepository.loadMedicine();

    //TODO remove for load medicines more fast
    await Future.delayed(const Duration(milliseconds: 1000));
    state = [...state, ...medicines];
  }
}
