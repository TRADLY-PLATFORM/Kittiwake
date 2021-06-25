import 'package:tradly_grocery_app/data/repo/repository.dart';
import 'package:tradly_grocery_app/data/store/data_store.dart';

class RepositoryImpl implements Repository{

  final DataStore _dataStore;

  RepositoryImpl(this._dataStore);

  @override
  Future<bool> login(String uuid, String email, String password) {
    return this._dataStore.login(uuid, email, password);
  }

}