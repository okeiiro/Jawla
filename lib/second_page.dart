import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
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
                  Navigator.pushNamed(context, '/chatbot');
                },
                // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
              ),
              Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 158, 217, 180),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 25,
                  onPressed: () {
                    Navigator.pushNamed(context, '/chatbot');
                  },
                  // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
              ),
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
        automaticallyImplyLeading: false,
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
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Divider(
          color: Colors.black,
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
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
                            fontSize: 12, fontFamily: 'MontserratMedium'),
                      ),
                      Text(
                        '24/08/2024',
                        style:
                            TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 158, 217, 180),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/carteSite');

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
                      image: AssetImage('assets/image8.png'),
                      width: 100.0,
                      height: 100.0),
                ),
              ]),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
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
                      Text(
                        '24/08/2024',
                        style:
                            TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
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
                      image: AssetImage('assets/image8.png'),
                      width: 100.0,
                      height: 100.0),
                ),
              ]),
        ),
      ]),
    );
  }
}
