import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/page/notes_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes SQLite';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        // themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.black87,
          scaffoldBackgroundColor: Color.fromARGB(255, 90, 90, 90),
          appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(0, 99, 99, 99),
            elevation: 0,
          ),
        ),
        home: NotesPage(),
      );
}
