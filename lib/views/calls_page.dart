import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.link,
              ),
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Recent'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 1'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 2'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 3'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 4'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 5'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 6'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 7'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 5'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 6'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            title: const Text('Contact 7'),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 20,
                ),
                Text('11 November, 4:11 pm'),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
