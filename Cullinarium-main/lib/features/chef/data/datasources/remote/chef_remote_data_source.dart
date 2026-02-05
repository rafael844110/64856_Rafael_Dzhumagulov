import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cullinarium/features/profile/data/mappers/chef_mapper.dart';
import 'package:cullinarium/features/profile/data/models/chefs/chef_model.dart';
import 'package:dartz/dartz.dart';

class ChefRemoteDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<String, List<ChefModel>>> getAllChefs() async {
    try {
      final querySnapshot = await _firestore.collection('chefs').get();
      final chefs = querySnapshot.docs
          .map((doc) => ChefMapper.fromJson(doc.data()))
          .toList();
      return Right(chefs);
    } catch (e) {
      return Left('Failed to fetch chefs: $e');
    }
  }
}
