import 'package:cooking_completly_understood/data/models/my_message_entity/my_message_entity.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/my_message_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseMyMessageDataSource implements MyMessageDataSource {
  final SupabaseClient _supabaseClient = Supabase.instance.client;
  final String _tableName = 'my_messages';
  @override
  Stream<List<MyMessageEntity>> getAll() {
    return _supabaseClient.from(_tableName).stream(primaryKey: ['id']).map(
        (event) => event
            .map((e) => MyMessageEntity(
                id: e['id'], content: e['content'], createdAt: e['created_at']))
            .toList());
  }

  @override
  Future<void> insert(String myMessage) {
    return _supabaseClient.from(_tableName).insert({
      'content': myMessage,
    }).then((value) => print('自分のメッセージを保存しました'));
  }
}
