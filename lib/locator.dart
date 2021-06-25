import 'package:get_it/get_it.dart';
import 'package:tradly_grocery_app/data/model/login_response.dart';
import 'package:tradly_grocery_app/domain/repo/repository.dart';
import 'package:tradly_grocery_app/data/source/cache/cache.dart';
import 'package:tradly_grocery_app/data/source/cache/cache_impl.dart';
import 'package:tradly_grocery_app/data/source/remote/web_service.dart';
import 'package:tradly_grocery_app/data/source/remote/web_service_impl.dart';
import 'package:tradly_grocery_app/data/store/data_store.dart';
import 'package:tradly_grocery_app/data/store/data_store_impl.dart';
import 'package:tradly_grocery_app/data/repo/repository_impl.dart';
import 'package:tradly_grocery_app/domain/usecase/login_use_case.dart';
import 'package:tradly_grocery_app/domain/usecase/login_use_case_impl.dart';
import 'package:tradly_grocery_app/presentation/ui/home/home_view_model.dart';
import 'package:tradly_grocery_app/presentation/ui/login/view_model/login_view_model.dart';
import 'package:tradly_grocery_app/presentation/ui/main/main_view_model.dart';

GetIt locator = GetIt.instance;

void _setupLocator() {

  //Cache
  locator.registerLazySingleton<Cache>(() => CacheImpl());

  //Data Store
  locator.registerLazySingleton<DataStore>(
          () => DataStoreImpl(locator<Cache>(),locator<WebService>()));

  //Repository
  locator.registerLazySingleton<Repository>(() => RepositoryImpl(locator<DataStore>()));

  //Use Case
  locator.registerFactory<LoginUseCase>(() => LoginUseCaseImpl(locator<Repository>()));

  //View Model
  locator.registerFactory<LoginViewModel>(() => LoginViewModel(locator<LoginUseCase>()));
  locator.registerFactory<MainViewModel>(() => MainViewModel());
  locator.registerFactory<HomeViewModel>(() => HomeViewModel());

  //Response
  locator.registerFactory(() => LoginResponse());

}

void setupMockLocator() {
  //locator.registerLazySingleton<WebService>(() => MockWebServiceImpl());
  _setupLocator();
}

void setUpRealLocator() {
  locator.registerLazySingleton<WebService>(() => WebServiceImpl());
  _setupLocator();
}