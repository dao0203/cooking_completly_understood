import 'dart:async';

import 'package:cooking_completly_understood/domain/models/my_message/my_message.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/domain/models/recipe_message/recipe_message.dart';
import 'package:cooking_completly_understood/domain/repositories/my_message_repository.dart';
import 'package:cooking_completly_understood/domain/repositories/recipe_repository.dart';
import 'package:cooking_completly_understood/domain/use_cases/use_case.dart';
import 'package:rxdart/rxdart.dart';

class GetRecipeMessagesUseCase
    implements UseCase<void, Stream<List<RecipeMessage>>> {
  final MyMessageRepository _messageRepository;
  final RecipeRepository _recipeRepository;

  GetRecipeMessagesUseCase(this._messageRepository, this._recipeRepository);
  //RecipeからRecipeMessageへ変換するトランスフォーマー
  final recipeToRecipeMessageTransformer =
      StreamTransformer<List<Recipe>, List<RecipeMessage>>.fromHandlers(
    handleData: (recipes, sink) {
      final recipeMessages = recipes
          .map(
            (e) => RecipeMessage(
              id: e.id,
              role: e.role,
              content: "${e.name}をおすすめします",
              timeStamp: e.timeStamp,
            ),
          )
          .toList();
      sink.add(recipeMessages);
    },
  );

//MyMessageからRecipeMessageへ変換するトランスフォーマー
  final myMessageToRecipeMessageTransformer =
      StreamTransformer<List<MyMessage>, List<RecipeMessage>>.fromHandlers(
    handleData: (myMessages, sink) {
      final recipeMessages = myMessages
          .map(
            (e) => RecipeMessage(
              id: e.id,
              role: e.role,
              content: e.content,
              timeStamp: e.timeStamp,
            ),
          )
          .toList();
      sink.add(recipeMessages);
    },
  );

//RecipeとMyMessageを結合するメソッド
  @override
  Stream<List<RecipeMessage>> call(void arg) {
    final recipeStream = _recipeRepository.getAllRecipes().transform(
          recipeToRecipeMessageTransformer,
        );
    final myMessageStream = _messageRepository.getAll().transform(
          myMessageToRecipeMessageTransformer,
        );
    return Rx.combineLatest2(
      myMessageStream,
      recipeStream,
      (a, b) => (a + b)
        ..sort(
          (a, b) => a.timeStamp.compareTo(b.timeStamp),
        ),
    );
  }
}
