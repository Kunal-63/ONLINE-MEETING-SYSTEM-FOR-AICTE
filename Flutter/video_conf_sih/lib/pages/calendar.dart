import 'package:flutter/material.dart';
// import 'package:smart_india_hackathon/pages/chat.dart';
// import 'package:smart_india_hackathon/pages/home_page.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:video_conf_sih/pages/chat.dart';
import 'package:video_conf_sih/pages/files_share.dart';
import 'package:video_conf_sih/pages/home_page.dart';
import 'package:video_conf_sih/pages/notifications.dart';
// import 'package:smart_india_hackathon/pages/notifications.dart';

class CalendarPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(27, 67, 78, 1),
          centerTitle: true,
          title: Text('Schedule'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: _openDrawer,
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
        body: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(27, 67, 78, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ), // Replace with your desired icon
                          SizedBox(
                              width: 8), // Add spacing between icon and text
                          Text(
                            'Add a new meet',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            )
          ],
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
                  Icons.calendar_month,
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
        ));
  }
}
