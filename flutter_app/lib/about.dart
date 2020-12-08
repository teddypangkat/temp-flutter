import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget profileBiodata = Container(color: Colors.white,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRowData('Gender', 'Male'),
          _buildRowData('Place of birth', 'Bandung'),
          _buildRowData('Date of birth', '21 march 1985'),
          _buildRowData('Relegion', 'Islam'),
          _buildRowData('Material status', 'Merried'),
          _buildRowData('Blood Type', 'o'),
        ],
      ),
    );

    Widget profileBagde = Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 22),
      child:
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Bagde', style: TextStyle(fontSize: 14, color: Colors.black),),
          _buildLineDivider(),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildItemBadge('Thirsty Learner', 'Learning', '2020'),
              _buildItemBadge('Star', 'WorkLifeBeyond', 'Top Talent 2020'),
              _buildItemBadge('Study', 'Learning', '2019'),
            ],
          ),
          _buildLineDivider(),
          Center(
            child: Text('View all Badge', style: TextStyle(fontSize: 14,
                color: Colors.blueAccent),),
          )
        ],
      )


    );

    Widget profileCompany = Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(top: 22),
        child:
        Column(
          children: [
            _buildHeaderCompany('Technical Lead', 'Feb 2019 - present (2 month)',
                'Development Research Bandung'),
            
            _buildRowData('Gender', 'Male'),
            _buildRowData('Place of birth', 'Bandung'),
            _buildRowData('Date of birth', '21 march 1985'),
            _buildRowData('Relegion', 'Islam'),
            _buildRowData('Material status', 'Merried'),
            _buildRowData('Blood Type', 'o'),

          ],
        )


    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('About'),

        ),
        body: Container(
          color: Colors.grey[300],
          child: ListView(
            children: [
              profileBiodata,
              profileBagde,
              profileCompany
            ],
          ),
        )
      )
    );


  }
}

Container _buildRowData(String title, String value) {
  return
    Container( margin: const EdgeInsets.only(top: 18),
      child: Row(mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Container(margin: const EdgeInsets.only(left: 12),
       child: Text(title, style: TextStyle(fontSize: 12, color: Colors.black45),),
       ),
       Spacer(flex: 10,),
       Text(value, style: TextStyle(fontSize: 12, color: Colors.black))
     ],
  ));
}

Column _buildItemBadge(String titleBagde, String type, String desc) {

  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('graphics/lake.jpg', width: 70, height: 70,),
      Container(margin: EdgeInsets.only(top: 4),
      child: Text(titleBagde, style: TextStyle(fontSize: 12, color: Colors.black),),
      ),
      Text(type, style: TextStyle(fontSize: 12, color: Colors.blueAccent)),
      Text(desc, style: TextStyle(fontSize: 12, color: Colors.black45)),
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

Container _buildHeaderCompany(String title, String year, String desc) {

  return Container(
    child: Row(
    mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset('graphics/lake.jpg', width: 70, height: 70,),
        Container(
          margin: EdgeInsets.only(left: 12),
          padding: EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 14, color: Colors.black),),
              Text(year, style: TextStyle(fontSize: 12, color: Colors.black45),),
              Text(desc, style: TextStyle(fontSize: 12, color: Colors.blue),)
            ],
          )
        )

      ],
    )
  );
}