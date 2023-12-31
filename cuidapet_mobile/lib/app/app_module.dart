import 'package:cuidapet_mobile/app/modules/auth/register/register_module.dart';
import 'package:cuidapet_mobile/app/modules/core/core_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/auth/auth_module.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/auth',
          module: AuthModule(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
        ModuleRoute(
          '/register',
          module: RegisterModule(),
        )
      ];
}
