abstract class MessageRepository {
  //天気や温度を考えたメッセージを送信して返信を受け取る
  Future<String> sendAndReceiveMessage(String sendedString);
}
