import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker_app/req/templateTracker.dart';
import './pages/userHome.dart';
import './pages/userHistory.dart';
import './pages/workout.dart';


void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Templatetracker(),
    child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.dark, 
          primary: Colors.grey[800]!, 
          onPrimary: Colors.white, 
          secondary: Colors.grey[800]!, 
          onSecondary: Colors.white, 
          error: Colors.red, 
          onError: Colors.white, 
          surface: Colors.grey[900]!, 
          onSurface: Colors.white
        ),
        useMaterial3: true,
      ),
      home: const UserPage(),
    );
  }
}

//contains bottomNavBar and logic for navigation
class UserPage extends StatefulWidget{
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}
class _UserPageState extends State<UserPage> {
  final String title = 'Test';
  int _selectedIndex = 0;

  void updateLocation(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    UserHome(),
    UserHistory(),
    Workout(),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: updateLocation,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.lightBlue[100],
        elevation: 8,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.run_circle), label: "Workout"),
        ],
      ),
    );
  }
}