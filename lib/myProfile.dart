import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black),
            onPressed: () {},
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: CircleAvatar(
              // backgroundImage: NetworkImage(),
              backgroundColor: Colors.brown.shade800,
              child: const Text('AH'),
              radius: 60.0,
            ),
            alignment: FractionalOffset(0.5, 0.05),
          ),
          SizedBox(height: 10),
          Text("Srun Monyrothanak", style: TextStyle(fontSize: 24)),
          SizedBox(height: 5),
          Text("data", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
