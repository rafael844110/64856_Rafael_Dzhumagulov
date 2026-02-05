import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cullinarium/features/recipe/data/models/recipe_model.dart';
import 'package:cullinarium/features/recipe/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final FirebaseFirestore _firestore;

  RecipeRepositoryImpl(this._firestore);

  @override
  Future<List<RecipeModel>> getRecipes() async {
    final snapshot = await _firestore.collection('recipes').get();
    return snapshot.docs
        .map((doc) => RecipeModel.fromJson(doc.data()))
        .toList();
  }

  @override
  Future<RecipeModel> getRecipeById(String id) async {
    final doc = await _firestore.collection('recipes').doc(id).get();
    if (!doc.exists) {
      throw Exception('Recipe not found');
    }
    return RecipeModel.fromJson(doc.data()!);
  }

  @override
  Future<void> addRecipe(RecipeModel recipe) async {
    final recipeModel = recipe;
    await _firestore
        .collection('recipes')
        .doc(recipe.id)
        .set(recipeModel.toJson());
  }

  @override
  Future<void> updateRecipe(RecipeModel recipe) async {
    final recipeModel = recipe;
    await _firestore
        .collection('recipes')
        .doc(recipe.id)
        .update(recipeModel.toJson());
  }

  @override
  Future<void> deleteRecipe(String id) async {
    await _firestore.collection('recipes').doc(id).delete();
  }

  @override
  Stream<List<RecipeModel>> recipeStream() {
    return _firestore
        .collection('recipes')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => RecipeModel.fromJson(doc.data()))
            .toList());
  }
}
