import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_bussiness_clone/helpers/colors.dart';
import 'package:image_picker/image_picker.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  File? _imageFile;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/sleep.jpg'),
            ),
            title: Text('My Status'),
            subtitle: Text('Yesterday, 10:28 pm'),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Recent updates'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            title: Text('Contact 1'),
            subtitle: Text('3 minutes ago'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            title: Text('Contact 2'),
            subtitle: Text('5 minutes ago'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            title: Text('Contact 3'),
            subtitle: Text('6 minutes ago'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            title: Text('Contact 4'),
            subtitle: Text('8 minutes ago'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            title: Text('Contact 5'),
            subtitle: Text('10 minutes ago'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            title: Text('Contact 6'),
            subtitle: Text('12 minutes ago'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            title: Text('Contact 7'),
            subtitle: Text('15 minutes ago'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.edit, color: Colors.grey,),
              backgroundColor: ash,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () async {
              await _pickImageFromCamera();
            },
            child: Icon(Icons.camera_alt),
            backgroundColor: Colors.green,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
  Future<void> _pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() => _imageFile = File(pickedFile.path));
    }
  }

}

