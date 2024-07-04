import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp(), routes: {
      '/secondpage': (context) => SecondPage(),
    }));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Color.fromARGB(255, 158, 217, 180),
          bottomAppBarColor: Color.fromARGB(255, 233, 232, 232),
        ),
        //home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              '',
              style: TextStyle(),
            ),
            backgroundColor: Color.fromARGB(244, 248, 245, 245),
            elevation: 0,
            flexibleSpace: Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                    onPressed: () {
                      // Action for back button
                      print('Back button pressed');
                    },
                    color: Colors.black,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.share_outlined),
                        onPressed: () {
                          // Action for share button
                          print('Share button pressed');
                        },
                        color: Colors.black,
                      ),
                      IconButton(
                        icon: Icon(isFavorite
                            ? Icons.bookmark
                            : Icons.bookmark_add_outlined),
                        onPressed: _toggleFavorite,
                        color: Colors.black,
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert_outlined),
                        onPressed: () {
                          // Action for more button
                          print('More button pressed');
                        },
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(0.0),
              margin: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // First Text
                  Container(
                      padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
                      child: Text(
                        'Tadrart Rouge : Le Joyau Caché du Sahara Algérien',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
                      )),
                  SizedBox(
                      height:
                          20), // Add some space between the text and the image
                  // Centered Image
                  Center(
                    child: Image(
                        image: AssetImage('assets/image3.png'),
                        fit: BoxFit.cover,
                        width: double.infinity),
                  ),
                  SizedBox(
                      height:
                          20), // Add some space between the image and the second text
                  // Second Text with different size
                  Container(
                      child: Row(children: <Widget>[
                    SizedBox(width: 16),
                    Icon(
                      Icons.place_outlined,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Djanet, Algérie',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          color: Color.fromARGB(255, 96, 180, 156)),
                    ),
                  ])),
                  Container(
                      padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
                      child: Text(
                        'Le Tadrart Rouge, situé dans la région sud-est de l\'Algérie, est une merveille naturelle encore peu connue des voyageurs. Ce site offre des paysages époustouflants, des formations rocheuses uniques et des peintures rupestres anciennes, faisant de cette destination un incontournable pour les aventuriers et les passionnés de nature.\n1. Les Formations Rocheuses Étonnantes\n Le Tadrart Rouge est célèbre pour ses formations rocheuses sculptées par le vent et le sable au fil des millénaires. Ces sculptures naturelles prennent des formes étranges et fascinantes, créant un paysage surréaliste. Les arches de pierre et les canyons étroits offrent des opportunités uniques pour la randonnée et la photographie.\n2. Les Peintures Rupestres Les grottes et les parois rocheuses du Tadrart Rouge abritent des peintures rupestres datant de plusieurs milliers d\'années. Ces œuvres d\'art préhistoriques représentent des scènes de la vie quotidienne, des animaux et des symboles mystérieux. Elles témoignent de la richesse culturelle et historique des anciens habitants de la région.\n3. Les Dunes de Sable Spectaculaires',
                        style: TextStyle(
                            fontSize: 14, fontFamily: 'MontserratMedium'),
                      )),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Action for floating button
              print('Floating Action Button Pressed');
            },
            child: Icon(Icons.add),
            backgroundColor: Color.fromARGB(255, 158, 217, 180),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 8.0,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 3, 20, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home_outlined),
                    iconSize: 29,

                    onPressed: () {
                      // _onItemTapped(0);
                    },
                    // color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                  IconButton(
                    icon: Icon(Icons.chat_outlined),
                    iconSize: 25,
                    onPressed: () {
                      //  _onItemTapped(1);
                    },
                    // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                  ),
                  SizedBox(
                      width: 40), // The empty space for the floating button
                  IconButton(
                    icon: Icon(Icons.map_outlined),
                    onPressed: () {
                      Navigator.pushNamed(context, '/secondpage');
                    },
                    iconSize: 27,

                    //  color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline),
                    onPressed: () {
                      //   _onItemTapped(3);
                    },
                    iconSize: 27,

                    // color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for floating button
          print('Floating Action Button Pressed');
        },
        child: Icon(Icons.add),
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 158, 217, 180),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 233, 232, 232),
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 3, 20, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home_outlined),
                iconSize: 29,

                onPressed: () {
                  // _onItemTapped(0);
                },
                // color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.chat_outlined),
                iconSize: 25,
                onPressed: () {
                  //  _onItemTapped(1);
                },
                // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
              ),
              SizedBox(width: 40), // The empty space for the floating button
              IconButton(
                icon: Icon(Icons.map_outlined),
                onPressed: () {
                  Navigator.pushNamed(context, '/secondpage');
                },
                iconSize: 27,

                //  color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () {
                  //   _onItemTapped(3);
                },
                iconSize: 27,

                // color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(244, 248, 245, 245),
        elevation: 0,
        flexibleSpace: Container(
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined),
                onPressed: () {
                  Navigator.pop(context);
                  // Action for back button
                  print('Back button pressed');
                },
                color: Colors.black,
              ),
              Text(
                'Itinéraires',
                style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.more_vert_outlined),
                    onPressed: () {
                      // Action for more button
                      print('More button pressed');
                    },
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mon itinéraire',
                        style:
                            TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                      ),
                      Text(
                        'Alger-TiziOuzou',
                        style: TextStyle(
                            fontSize: 14, fontFamily: 'MontserratMedium'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 158, 217, 180),
                        ),
                        onPressed: () {
                          // Action for button 1
                          print('Button 1 pressed');
                        },
                        child: Text('Consulter'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image(
                      image: AssetImage('assets/image3.png'),
                      width: 100.0,
                      height: 100.0),
                ),
              ]),
        ),
      ]),
    );
  }
}
