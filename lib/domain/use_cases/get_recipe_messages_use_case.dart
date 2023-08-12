import 'dart:async';

import 'package:recipe_lite/domain/models/my_message/my_message.dart';
import 'package:recipe_lite/domain/models/recipe/recipe.dart';
import 'package:recipe_lite/domain/models/recipe_message/recipe_message.dart';
import 'package:recipe_lite/domain/repositories/my_message_repository.dart';
import 'package:recipe_lite/domain/repositories/recipe_repository.dart';
import 'package:recipe_lite/domain/use_cases/use_case.dart';
import 'package:recipe_lite/utils/role.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class GetRecipeMessagesUseCase
    implements UseCase<void, Stream<List<RecipeMessage>>> {
  final MyMessageRepository _myMessageRepository;
  final RecipeRepository _recipeRepository;

  GetRecipeMessagesUseCase(this._myMessageRepository, this._recipeRepository);
  //RecipeからRecipeMessageへ変換するトランスフォーマー
  final recipeToRecipeMessageTransformer =
      StreamTransformer<List<Recipe>, List<RecipeMessage>>.fromHandlers(
    handleData: (recipes, sink) {
      final recipeMessages = recipes
          .map(
            (e) => RecipeMessage(
              id: e.id,
              role: Role.assistant.name,
              content: "${e.name}をおすすめします",
              createdAt: e.createdAt,
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
              role: Role.user.name,
              content: e.content,
              createdAt: e.createdAt,
            ),
          )
          .toList();
      sink.add(recipeMessages);
    },
  );

//RecipeとMyMessageを結合するメソッド
  @override
  Stream<List<RecipeMessage>> call(void _) {
    debugPrint("GetRecipeMessagesUseCase.call");
    final recipeStream = _recipeRepository.getAllRecipes().transform(
          recipeToRecipeMessageTransformer,
        );
    final myMessageStream = _myMessageRepository.getAll().transform(
          myMessageToRecipeMessageTransformer,
        );
    return Rx.combineLatest2(
      myMessageStream,
      recipeStream,
      (a, b) => (a + b)
        ..sort(
          (a, b) => a.createdAt.compareTo(b.createdAt),
        ),
    );
  }
}
