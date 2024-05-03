import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool notificationsEnabled = true;

  void toggleNotifications(bool value) {
    setState(() {
      notificationsEnabled = value;
    });
    String message = value ? 'Notifications turned on' : 'Notifications turned off';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
    // You can implement further logic here to enable/disable notifications
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        
        actions: [
          Switch(
          value: notificationsEnabled,
          onChanged: toggleNotifications,
          activeColor: const Color.fromARGB(255, 20, 20, 20),
          inactiveThumbColor: Color.fromARGB(255, 21, 8, 199),
        ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of notifications
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Notification ${index + 1}'),
            subtitle: const Text('This is a sample notification message.'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Notification ${index + 1} deleted.'),
                  ),
                );
                // Implement your logic to delete the notification
              },
            ),
          );
        },
      ),
    );
  }
}
