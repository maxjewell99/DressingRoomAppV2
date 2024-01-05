import 'package:flutter/material.dart';

import 'hiveDB.dart';
import 'main.dart';

class StatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {

  void totalItems() async {
    int totalQuantity = 0;

    // Iterate through each key in the box
    for (var key in boxRoomInfo.keys) {
      // Get the RoomInfo object associated with the key
      var roomInfo = boxRoomInfo.get(key) as RoomInfo?;

      // Check if the roomInfo is not null
      if (roomInfo != null) {
        // Add up the quantity for each room
        totalQuantity += roomInfo.quantity;
      }
    }

    // Print the total quantity
    print('Total Quantity: $totalQuantity');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Stats Page!',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () {
                totalItems();
              },
              child: Text(
                'Reveal Stats',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            )

            // Add more widgets or content as needed
          ],
        ),
      ),
    );
  }
}