
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  static const String _title = 'Flutter OnePage Design';
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              titleSection,
              searchSection,
              boxSection,
              iconSection,
              lineSection,
              subTitleSection,
              bottomSection,
            ],
          ),
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Bienvenu Ndao',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
              'https://us.123rf.com/450wm/thesomeday123/thesomeday1231709/thesomeday123170900021/85622928-ic%C3%B4ne-de-profil-avatar-par-d%C3%A9faut-espace-r%C3%A9serv%C3%A9-photo-gris-vecteurs-d-illustrations.jpg?ver=6'),
        ),
      )
    ],
  ),
);

Widget searchSection = Container(
  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
  decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.search,
        color: Colors.grey,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Icon(
        Icons.mic_none,
        color: Colors.grey,
      ),
    ],
  ),
);
Widget boxSection = Container(
  width: double.infinity,
  padding: EdgeInsets.all(25),
  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.indigoAccent,
        Colors.indigo,
      ],
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Faire Une Livraison',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'voir les commandes',
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
      SizedBox(height: 10),
      Text(
        'ou utiliser les services de traçage',
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 15,
          fontWeight: FontWeight.w200,
        ),
      ),
      SizedBox(height: 10),
      TextButton(
        onPressed: () {
         
        },
        
        child: Text('Details'),
      ),
    ],
  ),
);

Widget containerSection = Container(
  height: 200,
  width: double.infinity,
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue,
        Colors.green,
      ],
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Titre',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      Text('Sous-titre'),
      TextButton(
        onPressed: () {},
       
        child: Text('Acheter'),
      )
    ],
  ),
);

Widget rowSection = Container(
  color: Colors.black,
  height: 100,
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Expanded(
        child: Container(
          color: Colors.amber,
        ),
      ),
      Container(
        color: Colors.purple,
        height: 100,
        width: 100,
      ),
    ],
  ),
);

Widget iconSection = Container(
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.new_releases,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('New')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.school,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Skill')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Easel')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.business,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Room')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.purple[300],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.pin_drop,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Project')
          ],
        ),
      ),
    ],
  ),
);

Widget lineSection = Container(
  color: Colors.grey[200],
  padding: EdgeInsets.all(4),
);

Widget subTitleSection = Container(
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.indigoAccent,
        width: 5,
        height: 25,
      ),
      SizedBox(width: 10),
      Text(
        'Curriculum',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  ),
);

Widget bottomSection = Container(
  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Column(
    children: [
      Container(
        height: 130,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.indigoAccent,
                    Colors.indigo,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white, size: 50),
                  SizedBox(height: 10),
                  Text(
                    'Elite class',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
  /*           Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Central Quing elite class',
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Elite first choice rapid improuvmentof painting ability', // choice rapid improuvmentof painting ability
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '€53,000',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          
                          onPressed: () {},
                          child: Text('Purchase'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ), */
          ],
        ),
      ),
      SizedBox(height: 20),
/*       Container(
        height: 130,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.orange,
                    
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white, size: 50),
                  SizedBox(height: 10),
                  Text(
                    'Design class',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Central Quing design class',
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Elite first choice rapid improuvmentof painting ability', // choice rapid improuvmentof painting ability
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '€48,000',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          
                          onPressed: () {},
                          child: Text('Purchase'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),*/
    ],
  ),
); 


