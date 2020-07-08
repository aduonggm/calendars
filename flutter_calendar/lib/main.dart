import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/daily_calendar/daily_calendar_bloc.dart';
import 'package:flutter_calendar/bloc/daily_calendar/daily_calendar_event.dart';
import 'package:flutter_calendar/views/calendar.dart';
import 'package:flutter_calendar/views/daily_calendar.dart';
import 'package:flutter_calendar/views/list_event.dart';
import 'package:flutter_calendar/views/setting_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'bloc/simple_bloc_delegate.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Quicksand",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> _widgetOptions = [
    DailyCalendar(),
    Calendars(),
    ListEvent(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Lịch ngày'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('Lịch tháng'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text('Sự kiện'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Quản lý'),
            ),
          ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),

    );
  }
}

