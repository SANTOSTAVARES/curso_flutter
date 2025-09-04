import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    'Olá Mundo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 200,
                    child: const Center(
                      child: Text('Container 1'),
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    height: 100,
                    width: 200,
                    child: const Center(
                      child: Text('Container 2'),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int page) {
          setState(() {
            indexBottomNavigationBar = page;
          });
          _pageController.animateToPage(
            page, 
            duration: Duration(microseconds: 300), 
            curve: Curves.ease,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 3',
          ),
        ],
      ),
    );
  }
}
