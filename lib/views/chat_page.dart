import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat_sharp),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.people),
                  ),
                  title: Text('Group ${index + 1}'),
                  subtitle: Text(
                    'Boluwatife MCB (Futa Gain By Dah Uni...',
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Column(
                    children: [
                      Text('1:49 am'),
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  title: Text('contact ${index + 1}'),
                  subtitle: Text('Gud morning'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('2:10 am'),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 13,
                        child: Text(
                          '6',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  title: Text('contact ${index + 2}'),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all),
                      Icon(Icons.mic),
                      Text('0: 10')
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('12:29 pm'),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
