import 'package:cullinarium/core/di/injections.dart';
import 'package:cullinarium/features/chef/data/datasources/remote/chef_remote_data_source.dart';
import 'package:cullinarium/features/chef/data/repositories/chef_repository_impl.dart';
import 'package:cullinarium/features/chef/domain/repositories/chef_repository.dart';
import 'package:cullinarium/features/chef/domain/usecases/get_all_chefs.dart';
import 'package:cullinarium/features/chef/presentation/cubit/chef_cubit.dart';

void chefInjection() async {
  // Datasource
  sl.registerSingleton<ChefRemoteDataSource>(ChefRemoteDataSource());

  // Repositories
  sl.registerSingleton<ChefRepository>(
    ChefRepositoryImpl(sl()),
  );

  // Usecases
  sl.registerFactory(() => GetAllChefs(sl()));

  // Cubits
  sl.registerFactory(() => ChefCubit(
        getAllChefs: sl(),
      ));
}
