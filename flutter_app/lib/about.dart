import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Widget profileBiodata = Container(
      color: Colors.white,
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bagde',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
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
              child: Text(
                'View all Badge',
                style: TextStyle(fontSize: 14, color: Colors.blueAccent),
              ),
            )
          ],
        ));

    Widget profileCompany = Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(top: 22),
        child: Column(
          children: [
            _buildHeaderCompany('Technical Lead',
                'Feb 2019 - present (2 month)', 'Development Research Bandung'),
            _buildRowData('Employe Id', '098378374647303948'),
            _buildRowData('Decree', 'WLB/XII/No.21/2020'),
            _buildRowData('Office Email', 'aulia@wlb.co.id'),
            _buildRowData('Department', 'Technology Department'),
            _buildRowData('Level', 'Employee'),
            _buildRowData('Legal', 'Permanent'),
            _buildRowData('Place', 'On Board'),
            _buildRowData('Time', 'Full Time'),
            _buildRowData('Access Rights', 'Administrator Staff'),
            _buildLineDivider(),
            _buildHeaderSupervisor(8,
                'Direct Supervisor', 'Habib Akbar Aziiz', 'Scrum Master'),
            _buildHeaderSupervisor(18,
                'Direct Subordinates', 'Alfatih Muhammad', 'Visual Designer at Kreasi inovasi Digital')
          ],
        ));

    Widget profileExperience = Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(top: 22),
        child:
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildAddHeader('Experience'),
            _buildItemList('Technical Lead',
                'WorkLifeBeyond',
                'Feb 2010 - Present',
                'Bandung Area, West Java, Indonesia',
                'I Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                    'Alps. Situated 1,578 meters above sea level, it is one of the '
                    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                    'half-hour walk through pastures and pine forest, leads you to the '
                    'lake, which warms to 20 degrees Celsius in the summer. Activities '
                    'enjoyed here include rowing, and riding the summer toboggan run.'),

            _buildItemList('Technical Lead',
                'Digital Creativa Asia',
                '2011 - Present',
                'Bandung Area, West Java, Indonesia', 'I Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                    'Alps. Situated 1,578 meters above sea level, it is one of the '
                    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                    'half-hour walk through pastures and pine forest, leads you to the '
                    'lake, which warms to 20 degrees Celsius in the summer. Activities '
                    'enjoyed here include rowing, and riding the summer toboggan run.'),
            _buildLineDivider(),
            Center(
              child: Text(
                'View all Experience',
                style: TextStyle(fontSize: 14, color: Colors.blueAccent),
              ),
            )
          ],
        )


    );

    Widget profileEducation = Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 22),
      child:
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildAddHeader('Education'),
              _buildItemList('Institue Teknologi Bandung',
                  'Master degree informatics',
                  '2015 - 2017',
                  'Bandung Area, West Java, Indonesia', 'I Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                      'Alps. Situated 1,578 meters above sea level, it is one of the '
                      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                      'half-hour walk through pastures and pine forest, leads you to the '
                      'lake, which warms to 20 degrees Celsius in the summer. Activities '
                      'enjoyed here include rowing, and riding the summer toboggan run.'),

              _buildItemList('Institue Teknologi Bandung',
                  'Master degree informatics',
                  '2011 - 2014',
                  'Bandung Area, West Java, Indonesia', 'I Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                      'Alps. Situated 1,578 meters above sea level, it is one of the '
                      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                      'half-hour walk through pastures and pine forest, leads you to the '
                      'lake, which warms to 20 degrees Celsius in the summer. Activities '
                      'enjoyed here include rowing, and riding the summer toboggan run.'),
              _buildLineDivider(),
              Center(
                child: Text(
                  'View all Education',
                  style: TextStyle(fontSize: 14, color: Colors.blueAccent),
                ),
              )
            ],
          )
          

    );

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('About'),
            ),
            body: Container(
              color: Colors.grey[300],
              child: ListView(
                children: [profileBiodata, profileBagde, profileCompany,
                  profileExperience,
                  profileEducation],
              ),
            )));
  }
}

Container _buildRowData(String title, String value) {
  return Container(
      margin: const EdgeInsets.only(top: 18),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 12),
            child: Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.black45),
            ),
          ),
          Spacer(
            flex: 10,
          ),
          Text(value, style: TextStyle(fontSize: 12, color: Colors.black))
        ],
      ));
}

Column _buildItemBadge(String titleBagde, String type, String desc) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'graphics/lake.jpg',
        width: 70,
        height: 70,
      ),
      Container(
        margin: EdgeInsets.only(top: 4),
        child: Text(
          titleBagde,
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
      Text(type, style: TextStyle(fontSize: 12, color: Colors.blueAccent)),
      Text(desc, style: TextStyle(fontSize: 12, color: Colors.black45)),
    ],
  );
}

Container _buildLineDivider() {
  return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 12),
      child: Divider(
        color: Colors.black12,
        height: 1,
      ));
}

Container _buildHeaderCompany(String title, String year, String desc) {
  return Container(
      child: Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Image.asset(
        'graphics/lake.jpg',
        width: 70,
        height: 70,
      ),
      Container(
          margin: EdgeInsets.only(left: 12),
          padding: EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                year,
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
              Text(
                desc,
                style: TextStyle(fontSize: 12, color: Colors.blue),
              )
            ],
          ))
    ],
  ));
}

Container _buildHeaderSupervisor(double marginTop,
    String titleSupervisior, String name, String title) {
  return Container(
    margin: EdgeInsets.only(top: marginTop),
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(top: 8, bottom: 12),
        child: Text(
          titleSupervisior,
          style: TextStyle(fontSize: 12, color: Colors.black26),
        ),
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('graphics/lake.jpg'),
            radius: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 12),
              padding: EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  ),
                ],
              ))
        ],
      )
    ],
  ));
}

Column _buildAddHeader(String title) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 14, color: Colors.black),),
            Icon(Icons.add, color: Colors.blue,)
          ],

        ),
        _buildLineDivider()
      ],
    );
}

Container _buildItemList(String titleEducation, String degree, String year,
String address, String desc) {
      return Container(padding: EdgeInsets.all(12),
      child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      _buildHeaderItemList(titleEducation, degree),
      SizedBox(height: 10,),
      Text(year, style: TextStyle(color: Colors.black45, fontSize: 12),),
      Text(address, style: TextStyle(color: Colors.black45, fontSize: 12),),
      Container(margin: EdgeInsets.only(top: 8),
        child:
        Text(desc, softWrap: true, style: TextStyle(color: Colors.black, fontSize: 12),),
      )



],
),
      );
}

Row _buildHeaderItemList(String title, String degree) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'graphics/lake.jpg',
          width: 70,
          height: 70,
        ),
        Column(mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(bottom: 4),
            child: Text(title, style: TextStyle(fontSize: 14, color: Colors.black),),
          ),
          Text(degree, style: TextStyle(fontSize: 14, color: Colors.blue))
        ],
        ),
        Icon(Icons.edit, size: 20,)
        

      ],
    );
}