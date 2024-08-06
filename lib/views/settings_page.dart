import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/sleep.jpg'),
            ),
            title: Text('lit\$ candle collections'),
            subtitle: Text('Hey there! I am using WhatsApp.'),
            trailing: Icon(
              Icons.qr_code,
              color: Colors.green,
            ),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Business tools'),
            subtitle: Text('Profile, catalogue, messaging tools'),
          ),
          ListTile(
            leading: Icon(Icons.vpn_key_sharp),
            title: Text('Account'),
            subtitle: Text('Security notifications, change number'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text('Block contacts, disappearing messages'),
          ),
          ListTile(
            leading: Icon(Icons.chat_sharp),
            title: Text('Chats'),
            subtitle: Text('Theme, wallpapers, chat history'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Message, group & call tones'),
          ),
          ListTile(
            leading: Icon(Icons.data_saver_off),
            title: Text('Storage and data'),
            subtitle: Text('Network usage, auto-download'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('App language'),
            subtitle: Text("English (phone's language)"),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Help'),
            subtitle: Text('Help centre, contact us, privacy policy'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Invite a contact'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('from'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.insert_link_outlined),
              Text('Meta')
            ],
          )
        ],
      ),
    );
  }
}
