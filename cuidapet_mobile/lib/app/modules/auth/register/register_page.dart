import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_textformfield.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/rouded_button_with_icon.dart';
import 'package:flutter/material.dart';

part 'widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Pra se cadastrar preenche as informações',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(221, 36, 36, 36)),
              ),
              SizedBox(
                height: 50.h,
              ),
              _RegisterForm(),
              SizedBox(
                height: 150.h,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fill,
                  width: 100.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
