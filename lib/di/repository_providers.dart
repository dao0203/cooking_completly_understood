//RecipeRepository
import 'package:cooking_completly_understood/data/repositories/auth_repository_impl.dart';
import 'package:cooking_completly_understood/data/repositories/food_repository_impl.dart';
import 'package:cooking_completly_understood/data/repositories/message_repository_impl.dart';
import 'package:cooking_completly_understood/data/repositories/my_message_repository_impl.dart';
import 'package:cooking_completly_understood/data/repositories/position_repository_impl.dart';
import 'package:cooking_completly_understood/data/repositories/recipe_repository_impl.dart';
import 'package:cooking_completly_understood/data/repositories/weather_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'data_source_providers.dart';

//RecipeRepository
final recipeRepositoryProvider = Provider((ref) => ref
    .read(recipeDataSourceProvider)
    .then((value) => RecipeRepositoryImpl(value)));

//MessageRepository
final messageRepositoryProvider =
    Provider((ref) => MessageRepositoryImpl(ref.read(chatDataSourceProvider)));

//FoodRepository
final foodRepositoryProvider =
    Provider((ref) => FoodRepositoryImpl(ref.watch(foodDataSourceProvider)));

//MyMessageRepository
final myMessageRepositoryProvider = Provider((ref) => ref
    .read(myMessageDataSourceProvider)
    .then((value) => MyMessageRepositoryImpl(value)));

//PositionRepository
final positionRepositoryProvider = Provider(
    (ref) => PositionRepositoryImpl(ref.read(positionDataSourceProvider)));

//WeatherRepository
final weatherRepositoryProvider = Provider(
    (ref) => WeatherRepositoryImpl(ref.read(weatherDataSourceProvider)));

//AuthRepository
final authRepositoryProvider = Provider((ref) {
  return AuthRepositoryImpl(ref.read(authDataSourceProvider));
});
