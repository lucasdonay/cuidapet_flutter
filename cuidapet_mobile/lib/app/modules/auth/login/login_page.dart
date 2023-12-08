import 'package:flutter/material.dart';

import '../../../core/ui/widgets/cuidapet_textformfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final testeEC = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CuidapetTextformfield(
                label: 'login',
                obscureText: true,
                controller: testeEC,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Valor obrigatório';
                  }
                  return null;
                },
              ),
              Text(testeEC.text),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                  },
                  child: Text('Validar'))
            ],
          ),
        ),
      ),
    );
  }
}
