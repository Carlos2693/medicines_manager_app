import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medicines_manager_app/widgets/widgets.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Registrar medicamento'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                children: [
                  const SizedBox(height: 30),

                  const CustomTextFormField(
                    label: 'Nombre del producto'
                  ),
                  const SizedBox(height: 30),
    
                  const CustomTextFormField(
                    label: 'Descripción del producto'
                  ),
                  const SizedBox(height: 30),
    
                  const CustomTextFormField(
                    label: 'Cantidad del producto',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 30),
    
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: CustomFilledButton(
                      text: 'Registrar',
                      buttonColor: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
