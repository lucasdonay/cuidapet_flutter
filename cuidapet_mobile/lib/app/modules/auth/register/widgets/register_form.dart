part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CuidapetTextformfield(label: 'Login'),
        const SizedBox(
          height: 15,
        ),
        CuidapetTextformfield(
          label: 'Senha',
          obscureText: true,
        ),
        const SizedBox(
          height: 15,
        ),
        CuidapetTextformfield(
          label: 'Confirma senha',
          obscureText: true,
        ),
        const SizedBox(
          height: 30,
        ),
        CuidapetDefaultButton(
          label: 'Cadastrar',
          onPressed: () {},
        ),
      ],
    ));
  }
}
