import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:whatsapp_bussiness_clone/helpers/colors.dart';
import 'package:whatsapp_bussiness_clone/helpers/routes.dart';
import 'package:whatsapp_bussiness_clone/views/calls_page.dart';
import 'package:whatsapp_bussiness_clone/views/chat_page.dart';
import 'package:whatsapp_bussiness_clone/views/market_page.dart';
import 'package:whatsapp_bussiness_clone/views/settings_page.dart';
import 'package:whatsapp_bussiness_clone/views/status_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: wgreen),
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
      routes: {settingsRoute: (context) => const SettingsPage()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _fTabPage = <Widget>[
    const Icon(
      Icons.store,
    ),
    const Text('CHATS'),
    const Text('STATUS'),
    const Text('CALLS'),
  ];
  File? _imageFile;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _fTabPage.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp Business',
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  await _pickImageFromCamera();
                },
                icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {
              _pickImageFromCamera();
            }, icon: Icon(Icons.search)),
            PopupMenuButton(onSelected: (value) {
              switch (value) {
                case 1:
                  _openSettings(context);
                  break;
              }
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Advertise on Facebook')),
                PopupMenuItem(child: Text('Business tools')),
                PopupMenuItem(child: Text('New group')),
                PopupMenuItem(child: Text('New broadcast')),
                PopupMenuItem(child: Text('Labels')),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Starred messages')),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 1,
                ),
              ];
            })
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: _fTabPage,
          ),
        ),
        body: TabBarView(
          children: [
            MarketPage(),
            ChatPage(),
            StatusPage(),
            CallPage(),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() => _imageFile = File(pickedFile.path));
    }
  }

  Future<void> _openSettings(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SettingsPage(),
        ));
  }
}
