import 'package:flutter/material.dart';

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