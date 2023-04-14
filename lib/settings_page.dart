import 'package:flutter/material.dart';

class UserSettingsPage extends StatelessWidget {
  const UserSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        // add a back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // change the background color to white
        backgroundColor: Colors.white,
        // remove the shadow
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              'Account',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wubeshet Yimam',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Edit Profile',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Settings',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            ListTile(
              title: Text('Language'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Notifications'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Help'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
