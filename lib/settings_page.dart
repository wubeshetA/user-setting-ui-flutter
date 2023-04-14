import 'package:flutter/material.dart';

import 'account_page.dart';

class UserSettingsPage extends StatefulWidget {
  const UserSettingsPage({Key? key}) : super(key: key);

  @override
  State<UserSettingsPage> createState() => _UserSettingsPageState();
}

class _UserSettingsPageState extends State<UserSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // add height for the appbar
        toolbarHeight: 100,
        // add a back button
  
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // add button to the right side
        
        
        // change the background color to white
        backgroundColor: Colors.white,
        // remove the shadow
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          // add background color

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24.0),

            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                radius: 25,
                child: Icon(Icons.person_3_sharp,
                    color: Color(0xffb8bcc7), size: 25),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Wubeshet Yimam',
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                child: Text('Profile Info'),
              ),
              onTap: () {
                // Navigate to account page when the tile is tapped.
                // Replace `AccountPage()` with the actual page you want to navigate to.
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
              // Wrap the trailing icon with a container to add a background color and border.
              trailing: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f8),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  onPressed: () {
                    // Navigate to account page when the icon is tapped.
                    // Replace `AccountPage()` with the actual page you want to navigate to.
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AccountPage()));
                  },
                ),
              ),
            ),

            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24.0),

            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              leading: CircleAvatar(
                backgroundColor: Color(0xfffdefe2),
                maxRadius: 25,
                child: Icon(
                  Icons.language_rounded,
                  color: Color(0xfff46b25),
                ),
              ),
              title: Text('Language'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('English', style: TextStyle(color: Color(0xffb8bcc7))),
                  SizedBox(width: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff6f6f8),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_right),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              // remove the list line at the bottom of this tile
            ),

            //
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              leading: CircleAvatar(
                // increase the size of the avatar
                backgroundColor: Color(0xffe4f6fd),
                maxRadius: 25,
                child: Icon(
                  Icons.notifications,
                  color: Color(0xff17a4e8),
                ),
              ),
              title: Text('Notifications'),
              trailing: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f8),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  onPressed: () {},
                ),
              ),
              onTap: () {},
              // remove the list line at the bottom of this tile
            ),

            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              // leading:
              leading: CircleAvatar(
                backgroundColor: Color(0xffeceaff),
                maxRadius: 25,
                child: Icon(
                  Icons.dark_mode_sharp,
                  color: Color(0xff5532f6),
                ),
              ),
              title: Text('Dark Mode'),
              trailing: Row(
                //
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Off', style: TextStyle(color: Color(0xffb8bcc7))),
                  Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),

            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              leading: CircleAvatar(
                backgroundColor: Color(0xfffee6ec),
                maxRadius: 25,
                child: Icon(
                  Icons.language_rounded,
                  color: Color(0xffe93b65),
                ),
              ),
              title: Text('Help'),
              trailing: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f8),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  onPressed: () {},
                ),
              ),
              onTap: () {},
              // remove the list line at the bottom of this tile
            ),
          ],
        ),
      ),
    );
  }
}
