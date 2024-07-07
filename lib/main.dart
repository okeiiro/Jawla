import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

void main() => runApp(MaterialApp(home: MyApp(), routes: {
      '/secondpage': (context) => SecondPage(),
      '/chatbot': (context) => Chatbot(),
      '/carteSite': (context) => MapPage(),
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
            automaticallyImplyLeading: false,
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

class Chatbot extends StatefulWidget {
  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> with SingleTickerProviderStateMixin {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  bool _isTyping = false;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add({'sender': 'user', 'text': _controller.text});
        _controller.clear();
        _isTyping = true;
        Future.delayed(Duration(milliseconds: 1500), () {
          setState(() {
            _isTyping = false;
            _messages.add(
                {'sender': 'receiver', 'text': 'This is a pre-written reply.'});
          });
        });
      });
    }
  }

  Widget _buildTypingIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(3, (index) {
          return AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Opacity(
                opacity: _animation.value,
                child: child,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal:
                      2.0), ////////////////////////////////////////////////////////////////
              child: DotWidget(),
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                'Chat Bot',
                style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length + (_isTyping ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == _messages.length) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: _buildTypingIndicator(),
                  );
                }
                bool isUserMessage = _messages[index]['sender'] == 'user';
                return Align(
                  alignment: isUserMessage
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: isUserMessage
                          ? Color.fromARGB(255, 173, 228, 193)
                          : Color.fromARGB(255, 244, 240, 240),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 30, 30, 30), // Border color
                        width: 0.5,
                      ),
                    ),
                    child: Text(
                      _messages[index]['text']!,
                      style: TextStyle(color: Color.fromARGB(255, 59, 58, 58)),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Type your message here...',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 18, 18, 18),
                                width: 0.65),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    IconButton(
                      color: Color.fromARGB(255, 158, 217, 180),

                      icon: Icon(Icons.send),

                      //  Color.fromARGB(255, 158, 217, 180)),
                      onPressed: _sendMessage,
                    ),
                  ],
                ),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ],
      ),
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
    );
  }
}

class DotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  double _currentSheetSize = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen Map
          Container(
            child: Center(
              child: Image.asset(
                'assets/image1.png', // Replace with your image
                fit: BoxFit.cover,
              ),
            ), // Placeholder for the map
          ),
          // Picture at the top when the sheet is expanded
          if (_currentSheetSize >= 0.55)
            Positioned(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              child: Opacity(
                opacity: (_currentSheetSize - 0.5) * 5.3, // Fade in effect
                child: Container(
                  // color: Colors.black.withOpacity(0.5),

                  child: Image.asset(
                    'assets/image2.png', // Replace with your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

          // Draggable Scrollable Sheet
          NotificationListener<DraggableScrollableNotification>(
            onNotification: (notification) {
              setState(() {
                _currentSheetSize = notification.extent;
              });
              return true;
            },
            child: DraggableScrollableSheet(
              initialChildSize: 0.24,
              minChildSize: 0.24,
              maxChildSize: 0.67,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 238, 236),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Handle for the draggable sheet
                        Center(
                          child: Container(
                            height: 4,
                            width: 60,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 205, 204, 204),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Text(
                            'Basilique Notre Dame D\'Afrique',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        // Add more widgets here as needed
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                              child: Text(
                                'Rue Bologhine, Alger',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'MontserratMedium',
                                ),
                              ),
                            ),
                          ],
                        ),

                        Center(
                          child: Container(
                            width: 370,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.map_outlined),
                                      iconSize: 35,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/chatbot');
                                      },
                                    ),
                                    Text(
                                      '20KM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon:
                                          Icon(Icons.qr_code_scanner_outlined),
                                      iconSize: 30,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/chatbot');
                                      },
                                    ),
                                    Text(
                                      'Résérvé',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.timelapse_outlined),
                                      iconSize: 30,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/chatbot');
                                      },
                                    ),
                                    Text(
                                      'Ouvert',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 5),
                          child: Text(
                            'Description',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'Description',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'MontserratMedium',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          if (_currentSheetSize >= 0.63)
            Positioned(
              right: 15,
              top: MediaQuery.of(context).size.height * 0.28,
              child: Opacity(
                opacity: (_currentSheetSize - 0.5) * 5.8, // Fade in effect
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color.fromARGB(255, 236, 234, 227),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.bookmark_outlined),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pushNamed(context, '/chatbot');
                    },
                    // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
            ),

          if (_currentSheetSize >= 0.63)
            Positioned(
              left: 7,
              right: 0,
              top: MediaQuery.of(context).size.height * 0.26,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity:
                          (_currentSheetSize - 0.5) * 5.8, // Fade in effect
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: IconButton(
                          icon: Icon(Icons.star),
                          iconSize: 30,
                          color: Color.fromARGB(255, 215, 223, 219),

                          onPressed: () {},
                          // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:
                          (_currentSheetSize - 0.5) * 5.8, // Fade in effect
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: IconButton(
                          icon: Icon(Icons.star_border_outlined),
                          iconSize: 30,
                          color: Color.fromARGB(255, 218, 225, 219),

                          onPressed: () {},
                          // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:
                          (_currentSheetSize - 0.5) * 5.8, // Fade in effect
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: IconButton(
                          icon: Icon(Icons.star_border_outlined),
                          iconSize: 30,
                          color: Color.fromARGB(255, 215, 222, 216),

                          onPressed: () {},
                          // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:
                          (_currentSheetSize - 0.5) * 5.8, // Fade in effect
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: IconButton(
                          icon: Icon(Icons.star_border_outlined),
                          iconSize: 30,
                          color: Color.fromARGB(255, 212, 221, 213),

                          onPressed: () {},
                          // color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
