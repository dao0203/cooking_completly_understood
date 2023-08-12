import 'package:recipe_lite/data/sources/interfaces/auth_data_source.dart';
import 'package:recipe_lite/data/sources/interfaces/chat_data_source.dart';
import 'package:recipe_lite/data/sources/interfaces/my_message_data_source.dart';
import 'package:recipe_lite/data/sources/interfaces/recipe_data_source.dart';
import 'package:recipe_lite/data/sources/local/geolocator_position_data_source.dart';
import 'package:recipe_lite/data/sources/remote/supabase_food_data_source.dart';
import 'package:recipe_lite/data/sources/remote/chopper_open_ai_chat_data_source.dart';
import 'package:recipe_lite/data/sources/remote/chopper_open_meteo_api_data_source.dart';
import 'package:recipe_lite/data/sources/remote/supabase_auth_data_source.dart';
import 'package:recipe_lite/data/sources/remote/supabase_my_message_data_source.dart';
import 'package:recipe_lite/data/sources/remote/supabase_recipe_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//FoodDataSource
final foodDataSourceProvider = Provider((ref) => SupabaseFoodDataSource());

//MyMessageDataSource
final myMessageDataSourceProvider =
    Provider<MyMessageDataSource>(((ref) => SupabaseMyMessageDataSource()));

//PositionDataSource
final positionDataSourceProvider =
    Provider((ref) => GeolocatorPositionDataSource());

//openMeteoApiDataSource
final openMeteoApiDataSourceProvider =
    Provider((ref) => ChopperOpenMeteoApiDataSource.create());

//recipeDataSource
final recipeDataSourceProvider =
    Provider<RecipeDataSource>((ref) => SupabaseRecipeDataSource());

//chatDataSource
final chatDataSourceProvider =
    Provider<ChatDataSource>((ref) => ChopperOpenAIChatDataSource.create());

//weatherDataSource
final weatherDataSourceProvider =
    Provider((ref) => ChopperOpenMeteoApiDataSource.create());

//authDataSource
final authDataSourceProvider =
    Provider<AuthDataSource>((ref) => SupabaseAuthDataSource());
