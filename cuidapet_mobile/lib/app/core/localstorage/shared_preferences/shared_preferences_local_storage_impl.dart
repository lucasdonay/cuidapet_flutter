import 'package:cuidapet_mobile/app/core/localstorage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocalStorageImpl implements LocalStorage {
  Future<SharedPreferences> get _instance => SharedPreferences.getInstance();

  @override
  Future<void> clear<V>(String key) async {
    final sharedPreferecenes = await _instance;

    sharedPreferecenes.clear();
  }

  @override
  Future<bool> contains<V>(String key) async {
    final sharedPreferecenes = await _instance;
    return sharedPreferecenes.containsKey(key);
  }

  @override
  Future<V?> read<V>(String key) async {
    final sharedPreferecenes = await _instance;

    return sharedPreferecenes.get(key) as V;
  }

  @override
  Future<void> remove<V>(String key) async {
    final sharedPreferecenes = await _instance;
    sharedPreferecenes.remove(key);
  }

  @override
  Future<void> write<V>(String key, V value) async {
    final sharedPreferecenes = await _instance;
    switch (V) {
      case String:
        sharedPreferecenes.setString(key, value as String);
        break;
      case int:
        sharedPreferecenes.setInt(key, value as int);
        break;
      case bool:
        sharedPreferecenes.setBool(key, value as bool);
        break;
      case double:
        sharedPreferecenes.setDouble(key, value as double);
        break;
      case List<String>:
        sharedPreferecenes.setStringList(key, value as List<String>);
        break;
      default:
        throw Exception('Type not supported');
    }
  }
}
