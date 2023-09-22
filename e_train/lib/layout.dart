import 'package:e_train/screens/history.dart';
import 'package:e_train/screens/home.dart';
import 'package:e_train/screens/notifications.dart';
import 'package:e_train/screens/user.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout(this.index, {super.key});
  final int index;

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  late int _selectedPage;

  @override
  void initState() {
    _selectedPage = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('The app')),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.history), label: 'History'),
          NavigationDestination(icon: Icon(Icons.notifications), label: 'Notifications'),
          NavigationDestination(icon: Icon(Icons.person), label: 'User')
        ],
        selectedIndex: _selectedPage,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
      body: [const HomeScreen(), const History(), const Notifications(), const UserScreen()][_selectedPage],
    );
  }
}
