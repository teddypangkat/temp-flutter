import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'My App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Widget biodataProfileSection = Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTitleRow('Aulia Muslim Hidayatullah', 16, FontWeight.bold),
          Container(margin: EdgeInsets.only(top: 4, bottom: 4),
          child: Text('Technical Lead at Kreasi Digital Indonesia', style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold
          )
          ),
          ),
          Text('Bandung Area, West Java, Indonesia', style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black38
          )
          ),
          _buildLineDivider(),
          _buildTitleRow('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.', 12, FontWeight.normal),
          _buildLineDivider()

        ],
      ),
    );
    Widget headerProfileSection = Container(
    margin: const EdgeInsets.only(right: 22, left: 8),
    padding: const EdgeInsets.all(12),
    child: Row(mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(backgroundImage: AssetImage('graphics/lake.jpg'), radius: 40,),
        Column(children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(margin: const EdgeInsets.only(right: 18),
              child: _buildFollowColumn('Followers', '500'),
              ),
              _buildFollowColumn('Following', '500')
            ],
          ),
          Container(
            width: 140,
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(top: 4),
            color: Colors.blue,

          child:
          Center(
            child:  Text('Setting Section',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontSize: 12, fontWeight: FontWeight.normal, ),),
          )
          ),
        ],

        )

      ],
    ),
  );


    Widget contactProfileSection = Container(
      margin: const EdgeInsets.only(left: 42, right: 42),
      child: Row(mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.add_call,size: 32, color: Colors.black12,),
          Icon(Icons.email_outlined,size: 32, color: Colors.black12),
          Icon(Icons.location_pin,size: 32, color: Colors.black12),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter layout demo')
        ),
        body: ListView(children: [
            headerProfileSection,
            biodataProfileSection,
          contactProfileSection
        ],)
        ),

    );

  }
}

Column _buildFollowColumn(String titleCount, String title) {

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
      Text(titleCount, style: TextStyle(fontSize: 12, color: Colors.black38)),

    ],
  );
}

Container _buildLineDivider() {
  return
    Container(
        margin: const EdgeInsets.only(top: 16, bottom: 12),
        child:
    Divider(color: Colors.black12, height: 1,));
}


Row _buildTitleRow(String title, double size, FontWeight fWeight) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child:
        Text(title, softWrap: true,style: TextStyle(fontWeight: fWeight, fontSize:
        size))) ,
        Icon(Icons.edit, size: 16,
          color: Colors.blueAccent,)
      ],
    );
  }







