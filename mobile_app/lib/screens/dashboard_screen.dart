import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'request_for_donations_screen.dart';
import 'notify_about_flood_screen.dart';
import 'edit_profile_screen.dart';
import 'view_profile_screen.dart';

class dashboardScreen extends StatelessWidget {
  const dashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 3, 23, 134),
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),

    drawer: GFDrawer(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Color.fromARGB(255, 3, 23, 134)),
        accountName: Text("User Name"),
        accountEmail: Text("user@email.com"),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.person, color: Color.fromARGB(255, 3, 23, 134)),
        ),
      ),
      drawerItem(context, "Request for Donations", Icons.volunteer_activism, const requestForDonationsScreen()),
      drawerItem(context, "Notify About Floods", Icons.notifications_active, const notifyAboutFloodScreen(), hasAlert: true),
      drawerItem(context, "Edit Profile", Icons.edit, const editProfileScreen()),
      drawerItem(context, "View Profile", Icons.person_outline, const viewProfileScreen()),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.logout, color: Colors.redAccent),
        title: const Text("Logout"),
        onTap: () {
          Navigator.pop(context);
          // handle logout logic
        },
      ),
    ],
  ),
),


      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, Welcome!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // River Water Level Card
            GFCard(
              padding: const EdgeInsets.all(20),
              content: Column(
                children: [
                  const Text(
                    "River Water Level",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  GFProgressBar(
                    percentage: 0.83,
                    radius: 100,
                    backgroundColor: Colors.grey.shade200,
                    progressBarColor: const Color.fromARGB(255, 3, 23, 134),
                    width: 12,
                    child: const Center(
                      child: Text(
                        "2.5 m",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Safe level: 3.0 m",
                    style: TextStyle(color: Color.fromARGB(255, 3, 23, 134)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Flood Risk Card
            GFCard(
              padding: const EdgeInsets.all(20),
              content: Column(
                children: [
                  const Text(
                    "Flood Risk",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  GFProgressBar(
                    percentage: 0.5,
                    backgroundColor: Colors.grey.shade300,
                    progressBarColor: Colors.orange,
                    lineHeight: 15,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Moderate",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuTile(BuildContext context, String title, IconData icon, Widget destination, {bool hasAlert = false}) {
    return GFListTile(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      avatar: Icon(icon, color: Color.fromARGB(255, 3, 23, 134)),
      titleText: title,
      icon: hasAlert ? const Icon(Icons.error, color: Colors.orange) : null,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }

  Widget drawerItem(BuildContext context, String title, IconData icon, Widget destination, {bool hasAlert = false}) {
  return ListTile(
    leading: Icon(icon, color: Color.fromARGB(255, 3, 23, 134)),
    title: Text(title),
    trailing: hasAlert ? const Icon(Icons.error, color: Colors.orange) : null,
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destination),
      );
    },
  );
}

}

