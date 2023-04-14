import 'package:flutter/material.dart';

import 'account_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Scaffold(
        appBar: AppBar(
          // add height for the appbar
          toolbarHeight: 100,
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
            // add background color
    
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Account',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
