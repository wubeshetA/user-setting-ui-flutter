import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
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

          actions: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.check_box_rounded,
                    color: Color(0xff17a4e8),
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],

          // change the background color to white
          backgroundColor: Colors.white,
          // remove the shadow
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "Upload Photo",
              //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  'Account',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(
                  // put the gap
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Text(
                        "Photo",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 60),
                        CircleAvatar(
                          radius: 50,
                          child: Icon(Icons.person_3_sharp,
                              color: Color(0xffb8bcc7), size: 50),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Upload Image",
                            style: TextStyle(color: Colors.cyan),
                          ),
                        ),
                      ],
                    ),
                  ]),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      "Gender",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          // increase the size of the avatar
                          backgroundColor: Color(0xff5532f6),
                          maxRadius: 20,
                          child: Icon(
                            Icons.male,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20),
                        CircleAvatar(
                          // increase the size of the avatar
                          backgroundColor: Color(0xffb8bcc7),
                          maxRadius: 20,
                          child: Icon(
                            Icons.female,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      "Age",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your age",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
