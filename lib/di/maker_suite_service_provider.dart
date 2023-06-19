import 'package:cooking_completly_understood/data/services/maker_suite_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final makerSuiteServiceProvider = Provider((ref) {
  return MakerSuiteService.create();
});
