import 'package:flutter/material.dart';
import 'package:video_conf_sih/pages/calendar.dart';
import 'package:video_conf_sih/pages/chat.dart';
import 'package:video_conf_sih/pages/files_share.dart';
import 'package:video_conf_sih/pages/notifications.dart';
// import 'package:smart_india_hackathon/pages/calendar.dart';
// import 'package:smart_india_hackathon/pages/chat.dart';
// import 'package:smart_india_hackathon/pages/notifications.dart';
// import 'package:smart_india_hackathon/pages/try.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromRGBO(27, 67, 78, 1),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(27, 67, 78, 1),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: _openDrawer,
        ),
        title: Text(
          'ConfyShare',
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'RowdiesFam',
              fontWeight: FontWeight.w100),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(27, 67, 78, 0.818),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the Settings menu item
                // You can navigate to a different page or perform an action here
              },
            ),
            ListTile(
              leading: Icon(
                Icons.file_upload,
                color: Colors.white,
              ),
              title: Text(
                'Files',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FileShare()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the Settings menu item
                // You can navigate to a different page or perform an action here
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              title: Text(
                'Past Meets',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the Settings menu item
                // You can navigate to a different page or perform an action here
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
              ),
              title: Text(
                'Help',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the Settings menu item
                // You can navigate to a different page or perform an action here
              },
            ),
            ListTile(
              leading: Icon(
                Icons.voice_chat,
                color: Colors.white,
              ),
              title: Text(
                'Recordings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the Settings menu item
                // You can navigate to a different page or perform an action here
              },
            ),

            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the Settings menu item
                // You can navigate to a different page or perform an action here
              },
            ),
            // Add more menu items as needed
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image(image: AssetImage('assets/images/meetings.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Past Meetings',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal, // Scroll horizontally
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(27, 67, 78, 0.5),
                                  borderRadius: BorderRadius.circular(10)),

                              width: MediaQuery.of(context).size.width *
                                  1, // Example content
                              // height: MediaQuery.of(context).size.height * 0.4,
                              child: Column(children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Admin Meeting",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Host :",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "xyz-abc-pqr",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "IP :",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "192.168.1.98",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Duration :",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "41 mins",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Files Shared :",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "Yes",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "No of participants :",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "15",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ]),
                            ),
                            // Add more containers as needed
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 100,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(27, 67, 78, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.chat_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ChatPage(), // Navigate to a new screen
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop(context);
                MaterialPageRoute(
                  builder: (context) =>
                      CalendarPage(), // Navigate to a new screen
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        NotificationPage(), // Navigate to a new screen
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add), // Replace with your desired icon
        backgroundColor: Color.fromRGBO(
            27, 67, 78, 1), // Replace with your desired background color
      ),
    );
  }
}
