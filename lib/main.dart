import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertrivialp/firebase_options.dart';
import 'package:fluttertrivialp/ui/pages/game/game_page.dart';
import 'package:fluttertrivialp/ui/pages/leaderboard/leaderboard_page.dart';
import 'package:fluttertrivialp/ui/pages/profil/profil_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertrivialp/ui/pages/game/game_page.dart';
import 'package:fluttertrivialp/ui/pages/leaderboard/leaderboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(
      locationBuilder: RoutesLocationBuilder(
        routes: {
          // '/': (context, state, data) => SignInPage(),
          // '/login': (context, state, data) => SignUpPage(),
          // '/home': (context, state, data) => MyHomePage(title: ('Welcome'))
          '/': (context, state, data) => MyHomePage(title: ('Welcome'))
        }
      )
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    GamePage(),
    LeaderboardPage(),
    ProfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: "Quizz"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp), label: "Classement"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "Profil"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.login), label: "SignUp"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
