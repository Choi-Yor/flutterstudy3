import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Drawermenutest(),
    );
  }
}

class Drawermenutest extends StatelessWidget {
  const Drawermenutest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘도 오구오구'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: (){
              print('good shopping button');
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: (){
              print('good search button');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              onDetailsPressed: (){
                print('good choice');
              },
              decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/doobong1.png'),
        ),
              accountName: Text('Doobong'),
              accountEmail: Text('2hdistance@naver.com'),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/mekju1.png'),
                ),
              ],
        ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey),
              title: Text('Home',
              style: TextStyle(
                color: Colors.grey),
              ),
              onTap: (){
                print('home clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                  color: Colors.grey),
              title: Text('Setting',
                style: TextStyle(
                    color: Colors.grey),
              ),
              onTap: (){
                print('setting clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                  color: Colors.grey),
              title: Text('Q&A',
                style: TextStyle(
                    color: Colors.grey),
              ),
              onTap: (){
                print('Q&A clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}