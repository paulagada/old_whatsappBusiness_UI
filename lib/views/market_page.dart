import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.store),
          title: Text('Business Profile'),
          subtitle: Text('Manage adress, hours, and websites'),
        ),
        ListTile(
          leading: Icon(Icons.grid_on_outlined),
          title: Text('Catalogue'),
          subtitle: Text('Show Products and services'),
        ),
        Divider(
          thickness: 2,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Reach more customers'),
        ),
        ListTile(
          leading: Icon(Icons.record_voice_over),
          title: Text('Advertice on Facebook'),
          subtitle: Text('Create ads that lead to WhatsApp'),
        ),
        ListTile(
          leading: Icon(Icons.link),
          title: Text('Facebook & Instagram'),
          subtitle: Text('Add whatsApp to your accounts'),
        ),
        Divider(
          thickness: 2,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Messaging'),
        ),
        ListTile(
          leading: Icon(Icons.emoji_emotions),
          title: Text('Greeting message'),
          subtitle: Text('Welcome new customers automatically'),
        ),
        ListTile(
          leading: Icon(Icons.beach_access),
          title: Text('Away message'),
          subtitle: Text("Reply automatically when you're away"),
        ),
        ListTile(
          leading: Icon(Icons.flash_on),
          title: Text('Quick replies'),
          subtitle: Text("Refuse frequent messages"),
        ),
      ],
    );
  }
}
