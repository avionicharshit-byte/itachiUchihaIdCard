import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Itachi Uchiha"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel+=1;
          });
        },
        child: Icon(
          Icons.add,
        ),
          backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Itachi.png'),
                radius: 60,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            )
          ),
           SizedBox(height: 10),
           Text(
            'Itachi Uchiha',
             style: TextStyle(
             color: Colors.amberAccent[200],
               letterSpacing: 2.0,
               fontSize:25,
               fontWeight: FontWeight.bold,

            )
          ),
            SizedBox(height: 30),
            Text(
                'Current Ninja Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10),
            Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize:25,
                  fontWeight: FontWeight.bold,

                )
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'itachiuchiha@gmail.com',
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )

              ],
            )
          ], // Widget
        ),
      ),
    );
  }
}

