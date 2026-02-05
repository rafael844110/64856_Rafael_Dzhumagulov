import 'package:cullinarium/core/di/injections.dart';
import 'package:cullinarium/features/recipe/data/repositories/recipe_repository_impl.dart';
import 'package:cullinarium/features/recipe/domain/repositories/recipe_repository.dart';
import 'package:cullinarium/features/recipe/domain/usecases/add_recipe_use_case.dart';
import 'package:cullinarium/features/recipe/domain/usecases/get_recipes_use_case.dart';
import 'package:cullinarium/features/recipe/domain/usecases/update_recipe_use_case.dart';
import 'package:cullinarium/features/recipe/presentation/cubit/recipe_cubit.dart';

void recipeInjection() {
  // Repository
  sl.registerSingleton<RecipeRepository>(
    RecipeRepositoryImpl(sl()),
  );

  // Use Cases
  sl.registerFactory(() => GetRecipesUseCase(sl()));
  sl.registerFactory(() => AddRecipeUseCase(sl()));
  sl.registerFactory(() => UpdateRecipeUseCase(sl()));

  // Cubit
  sl.registerFactory(
    () => RecipeCubit(
      getRecipes: sl(),
      addRecipe: sl(),
      updateRecipeRepo: sl(),
    ),
  );
}
