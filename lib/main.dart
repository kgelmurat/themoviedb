import 'package:flutter/material.dart';

import 'Theme/app_colors.dart';
import 'widgets/auth/auth_widget.dart';
import 'widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColors.MainDarkBlue),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.MainDarkBlue,selectedItemColor: Colors.white,unselectedItemColor: Colors.grey[700]),
      ),
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
      },
      initialRoute: '/auth',
    );
  }
}

// class ExampleWidget extends StatefulWidget {
//   const ExampleWidget({Key? key}) : super(key: key);

//   @override
//   _MainScreenWidgetState createState() => _MainScreenWidgetState();
// }

// class _MainScreenWidgetState extends State<ExampleWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
//         title: Text(
//           'TMDB',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: Text('Click')),
//       ),
//     );
//   }
// }
