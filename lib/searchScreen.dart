import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context, 'Nope.');
                      }),
                  // IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
                  Container(
                    width: 300,
                    height: 55,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(45.0),
                            ),
                            borderSide: new BorderSide(color: Colors.teal)),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
