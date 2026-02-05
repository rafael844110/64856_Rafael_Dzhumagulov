import 'package:cullinarium/features/chef/data/datasources/remote/chef_remote_data_source.dart';
import 'package:cullinarium/features/chef/domain/repositories/chef_repository.dart';
import 'package:cullinarium/features/profile/data/models/chefs/chef_model.dart';
import 'package:dartz/dartz.dart';

class ChefRepositoryImpl implements ChefRepository {
  final ChefRemoteDataSource _chefRemoteDataSource;

  ChefRepositoryImpl(this._chefRemoteDataSource);

  @override
  Future<Either<String, List<ChefModel>>> getAllChefs() {
    return _chefRemoteDataSource.getAllChefs();
  }
}
