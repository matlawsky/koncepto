import 'package:koncepto/data/packet.dart';

class Device {
  const Device(
    this.id,
    this.name,
    this.description,
    this.msgExchangeList
  );

  final int id;
  final String name;
  final String description;
  final List <Packet> msgExchangeList;
}