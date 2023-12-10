part of '../login_page.dart';

class _LoginRegisterButtons extends StatelessWidget {
  const _LoginRegisterButtons();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        RoudedButtonWithIcon(
          onTap: () {},
          width: .42.sw,
          color: Colors.blue,
          icon: CuidaPetIcons.facebook,
          text: 'Facebook',
        ),
        RoudedButtonWithIcon(
          onTap: () {},
          width: .42.sw,
          color: Colors.red,
          icon: CuidaPetIcons.google,
          text: 'Google',
        ),
        RoudedButtonWithIcon(
          onTap: () {
            Modular.to.pushNamed('/register/');
          },
          width: .42.sw,
          color: context.primaryColor,
          icon: Icons.mail,
          text: 'Cadastre-se',
        ),
      ],
    );
  }
}
