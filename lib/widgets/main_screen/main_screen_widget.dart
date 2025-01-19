import 'package:flutter/material.dart';

import '../movie_list/movie_list_widgets.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

// class _MainScreenWidgetState extends State<MainScreenWidget>{
//   int _selectedTab = 0;
//   static const List<Widget> _widgetOptions =
// }

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Новости'),
    MovieListWidgets(),
    // MovieListWidgets(),
    // MovieListWidgets(),
    Text('Сериалы'),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
        title: Text(
          'TMDB',
          selectionColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(child: _widgetOptions[_selectedTab],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Сериалы',
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
