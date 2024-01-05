
import 'package:hive/hive.dart';
part 'hiveDB.g.dart';

@HiveType(typeId: 0)
class RoomInfo {

  @HiveField(0)
  String roomNum;

  @HiveField(1)
  int quantity;

  RoomInfo({
    required this.roomNum,
    required this.quantity,
  });
}
