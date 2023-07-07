import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/di/data_source_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRepositoryProvider = Provider((ref) async {
  final futureMessageRepository = ref.read(recipeDataSourceProvider).then(
        (recipeService) => ref.read(myMessageDataSourceProvider).then(
              (myMessage) => MessageRepository(
                ref.read(positionDataSourceProvider),
                ref.read(openMeteoApiDataSourceProvider),
                ref.read(paLMApiDataSourceProvider),
                recipeService,
                myMessage,
              ),
            ),
      );
  return futureMessageRepository;
});
