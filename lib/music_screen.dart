import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/video_detail_screen.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: 10,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideoDetailScreen()),
                      );
                    },
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                          image: AssetImage(
                            'assets/images/1.jpg',
                          ),
                          width: 170,
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('datafor usadf',style: TextStyle(fontSize: 18),)

                ],
              ),
            );
          }),
    );
  }
}
