import 'package:flutter/material.dart';
import 'package:video_conf_sih/pages/calendar.dart';
import 'package:video_conf_sih/pages/files_share.dart';
import 'package:video_conf_sih/pages/home_page.dart';
import 'package:video_conf_sih/pages/notifications.dart';
// import 'package:smart_india_hackathon/pages/calendar.dart';
// import 'package:smart_india_hackathon/pages/home_page.dart';
// import 'package:smart_india_hackathon/pages/notifications.dart';

class ChatPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
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
          'Chat',
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
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image(
                  image: AssetImage('assets/images/nochat.png'),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Color.fromRGBO(27, 67, 78, 1),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "\t\t\tSuggestions",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      )
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
                Icons.home_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        HomePage(), // Navigate to a new screen
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.chat,
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        CalendarPage(), // Navigate to a new screen
                  ),
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
        child: Icon(Icons.edit), // Replace with your desired icon
        backgroundColor: Color.fromRGBO(
            27, 67, 78, 1), // Replace with your desired background color
      ),
    );
  }
}
