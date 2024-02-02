import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Example',
                style: TextStyle(color: Colors.white)), // Цвет текста AppBar
            bottom: TabBar(
              tabs: [
                Tab(text: 'Секция 1'),
                Tab(text: 'Секция 2'),
                Tab(text: 'Секция 3'),
              ],
              indicatorColor: Colors.white, // Цвет выбранной вкладки
              labelColor: Colors.white, // Цвет текста в выбранной вкладке
              unselectedLabelColor:
                  Colors.white, // Цвет текста в не выбранной вкладке
            ),
            backgroundColor: Colors.blue, // Цвет фона AppBar
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  255, 255, 255, 255), // Цвет фона содержания секций
            ),
            child: TabBarView(
              children: [
                // Содержание первой секции
                Center(
                    child: Text('Содержание секции 1',
                        style: TextStyle(color: Colors.white))), // Текст белый

                // Содержание второй секции
                Center(
                    child: Text('Содержание секции 2',
                        style: TextStyle(color: Colors.white))), // Текст белый

                // Содержание третьей секции
                Center(
                    child: Text('Содержание секции 3',
                        style: TextStyle(color: Colors.white))), // Текст белый
              ],
            ),
          ),
        ),
      ),
    );
  }
}
