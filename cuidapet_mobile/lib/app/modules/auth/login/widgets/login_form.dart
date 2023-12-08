part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CuidapetTextformfield(label: 'Login'),
          const SizedBox(
            height: 20,
          ),
          CuidapetTextformfield(
            label: 'Senha',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CuidapetDefaultButton(
            label: 'Entrar',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class _OrSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: context.primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'OU',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: context.primaryColor,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: context.primaryColor,
          ),
        ),
      ],
    );
  }
}
