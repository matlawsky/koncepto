
class Packet {
  Packet(
    this.time,
    this.request,
    this.header,
    this.body,
    );
  
  final String request;
  final String header;
  final String body;
  final DateTime time;
}