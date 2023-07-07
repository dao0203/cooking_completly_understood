import 'package:cooking_completly_understood/data/sources/local/isar_food_data_source.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_my_message_data_source.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_recipe_data_source.dart';
import 'package:cooking_completly_understood/data/sources/remote/geolocator_position_data_source.dart';
import 'package:cooking_completly_understood/data/sources/remote/open_meteo_api_data_source.dart';
import 'package:cooking_completly_understood/data/sources/remote/palm_api_data_source.dart';
import 'package:cooking_completly_understood/di/isar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//FoodDataSource
final foodDataSourceProvider = Provider(
    (ref) => ref.read(isarProvider).then((isar) => IsarFoodDataSource(isar)));

//MyMessageDataSource
final myMessageDataSourceProvider = Provider(((ref) =>
    ref.read(isarProvider).then((isar) => IsarMyMessageDataSource(isar))));

//PositionDataSource
final positionDataSourceProvider =
    Provider((ref) => GeolocatorPositionDataSource());

//openMeteoApiDataSource
final openMeteoApiDataSourceProvider =
    Provider((ref) => OpenMeteoApiDataSource.create());

//recipeDataSource
final recipeDataSourceProvider = Provider(
    (ref) => ref.read(isarProvider).then((isar) => IsarRecipeDataSource(isar)));

//palmApiDataSource
final paLMApiDataSourceProvider = Provider((ref)=> PaLMApiDataSource.create());