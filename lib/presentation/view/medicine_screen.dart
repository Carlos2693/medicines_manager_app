import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:medicines_manager_app/presentation/store/medicine_provider.dart';

class MedicineScreen extends ConsumerWidget {
  const MedicineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final medicines = ref.watch(medicineProvider);
    final String body;

    if (medicines.isEmpty) {
      body = 'Is empty';
    } else {
      body = 'Not is empty';
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('ABC'),
        ),
        body: Text(body),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => context.push('/register'),
          label: const Text('Nuevo medicamento'),
          icon: const Icon(Icons.add),
        ),
      );
  }
}
