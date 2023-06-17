

import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:cooking_completly_understood/domain/get_recipe_messages_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getRecipeMessagesUseCaseProvider = Provider((ref) async{
  final messageRepository = await ref.read(messageRepositoryProvider);
  final recipeRepository = await ref.read(recipeRepositoryProvider);
  return GetRecipeMessagesUseCase(messageRepository, recipeRepository);
});