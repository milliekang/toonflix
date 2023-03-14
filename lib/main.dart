import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter ui practice',
      home:Scaffold(
        // custom color
        backgroundColor: Color(0xFF181818),
        body:Padding(
          padding:EdgeInsets.symmetric(horizontal: 20),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text(
                    'Hello, Millie!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      ),
                  ),
                  Text('welcome back',
                  style:TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18
                    ))
                ],)
              ],
            ),
            SizedBox(height: 80,),
            SizedBox(height: 10,),
            Text('Total Balance', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 22),),
            Text('\$2,300', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),
            Row(children: [
              Container(
                decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(45)),
                child:
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal:40,),
                child: Text('Transfrom', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                )
              ),
            ],)
          ],),)
      )
    );
  }
}
