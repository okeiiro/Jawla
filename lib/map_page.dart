import 'package:flutter/material.dart';

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
                            width: 90,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 174, 173, 173),
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
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon:
                                          Icon(Icons.qr_code_scanner_outlined),
                                      iconSize: 35,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/chatbot');
                                      },
                                    ),
                                    Text(
                                      'Résérvé',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.timelapse_outlined),
                                      iconSize: 35,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/chatbot');
                                      },
                                    ),
                                    Text(
                                      'Ouvert',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 13,
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
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            'La basilique est construite sur un promontoire dominant la mer de 124 m, au nord d\'Alger1. Elle est accessible par un téléphérique qui porte son nom depuis Bologhine (ex-Saint-Eugène), où se trouve le cimetière Saint-Eugène. Elle est considérée comme « la sœur jumelle de la basilique marseillaise Notre-Dame-de-la-Garde2. »\n\nLa basilique est surnommée « Madame l\’Afrique » ou « Lalla Myriem »1 par les habitants du voisinageN 1. Pour le journaliste Lyes Menacer, elle constitue un « symbole du brassage culturel et de la cohabitation religieuse depuis 160 ans »2. En témoignent l\'inscription célèbre dans le chœur : « Notre Dame d\’Afrique, priez pour nous et pour les musulmans », ainsi qu\'une autre phrase, écrite en français, arabe et kabyle : « L\'amour fraternel vient de Dieu. Il est Dieu même. »',
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
