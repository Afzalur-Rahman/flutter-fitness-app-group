import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'Services/notifi_service.dart';
import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();


  tz.initializeTimeZones();
  runApp(const RemindersPage());
}

class RemindersPage extends StatelessWidget {
  const RemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notifications',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Set Your Reminder Time'),
    );
  }
}