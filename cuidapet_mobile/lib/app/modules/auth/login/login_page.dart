import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuidapet_mobile/app/core/ui/extensions/theme_extension.dart';
import 'package:cuidapet_mobile/app/core/ui/icons/cuida_pet_icons.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/loader.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/messages.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/rouded_button_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../core/ui/widgets/cuidapet_default_button.dart';
import '../../../core/ui/widgets/cuidapet_textformfield.dart';

part 'widgets/login_form.dart';
part 'widgets/login_register_buttons.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final testeEC = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 150.w,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _LoginForm(),
              const SizedBox(
                height: 20,
              ),
              _OrSeparator(),
              const SizedBox(
                height: 20,
              ),
              _LoginRegisterButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
