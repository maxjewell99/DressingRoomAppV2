import 'package:dressing_room_v2/main.dart';
import 'package:flutter/material.dart';

import 'hiveDB.dart';

class ItemQuantityPage extends StatefulWidget {
  @override
  _itemQuantityState createState() => _itemQuantityState();

  final int roomNumber;
  const ItemQuantityPage({Key? key, required this.roomNumber}) : super(key: key);

}

class _itemQuantityState extends State<ItemQuantityPage> {


  void confirmation() async {
    final roomInfo = RoomInfo(
      roomNum: widget.roomNumber.toString(),
      quantity: int.parse(selectedValue),
    );

    await boxRoomInfo.put(widget.roomNumber, roomInfo);

    if(roomInfo != null) {
      print('Room Number: ${roomInfo.roomNum}');
      print('Quantity: ${roomInfo.quantity}');
    } else {
      print('No data found');
    }
  }


  String selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Quantity Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Room: filler',
                style: TextStyle( fontSize: 22,),
              ),
            ),
            DropdownButton<String?>(
              value: selectedValue, // The currently selected value
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: <String?>[
                '1', '2', '3', '4', '5','6','7','8','9','10',
              ].map((String? value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value!),
                );
              }).toList(),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                confirmation();
              },
              child: const Text('Confirm'),
            ),
            // Add more widgets or content as needed
          ],
        ),
      ),
    );
  }
}
