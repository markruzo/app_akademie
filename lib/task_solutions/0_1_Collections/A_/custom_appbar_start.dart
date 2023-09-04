import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          actions: const <Widget>[
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add,
                  color: Color(0xFFF2F0E9),
                ))
          ],
          centerTitle: false,
          elevation: 0,
          backgroundColor: const Color(0xFFFF6137),
          title: const Text('AppBar Widget'),
        ),
        body: const Center(
          child: Text(
            'Scaffold Widget',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Color(
                0xFFFF6137,
              ),
            ),
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          backgroundColor: Color(0xFF260509),
          onPressed: null,
          child: Icon(
            Icons.add,
            size: 24,
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: const Color(0xFF260509),
            selectedItemColor: const Color(0xFFF2F0E9),
            unselectedItemColor: const Color(0xFFF2F0E9).withOpacity(0.5),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    Icons.home_filled,
                  ),
                ),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    Icons.person,
                  ),
                ),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    Icons.person,
                  ),
                ),
                label: 'Menu',
              ),
            ],
          ),
        ),
      ),
    ));
