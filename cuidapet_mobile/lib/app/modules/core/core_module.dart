import 'package:cuidapet_mobile/app/core/localstorage/flutter_secure_storage_local_storage_impl.dart';
import 'package:cuidapet_mobile/app/core/localstorage/local_storage.dart';
import 'package:cuidapet_mobile/app/core/localstorage/shared_preferences/shared_preferences_local_storage_impl.dart';
import 'package:cuidapet_mobile/app/core/logger/app_logger.dart';
import 'package:cuidapet_mobile/app/core/logger/app_logger_impl.dart';
import 'package:cuidapet_mobile/app/core/rest_client/dio/dio_rest_client.dart';
import 'package:cuidapet_mobile/app/core/rest_client/rest_client.dart';
import 'package:cuidapet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => AuthStore(), export: true),
        Bind.lazySingleton<RestClient>((i) => DioRestClient(), export: true),
        Bind.lazySingleton<AppLogger>((i) => AppLoggerImpl(), export: true),
        Bind.lazySingleton<LocalStorage>(
          (i) => SharedPreferencesLocalStorageImpl(),
          export: true,
        ),
        Bind.lazySingleton<LocalSecureStorage>(
          (i) => FlutterSecureStorageLocalStorageImpl(),
          export: true,
        )
      ];
}
