import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

main() async {
  var channel = IOWebSocketChannel.connect(Uri.parse(''));

  channel.stream.listen((message) {
    channel.sink.add('received');
    channel.sink.close(status.goingAway);
  });
}