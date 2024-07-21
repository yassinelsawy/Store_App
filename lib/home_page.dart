import 'package:flutter/material.dart';
import 'package:flutter_task_4/home_screen.dart';
import 'package:flutter_task_4/orders.dart';
import 'package:flutter_task_4/profile_page.dart';
import 'package:flutter_task_4/profile_page_2.dart';
import 'package:fontresoft/fontresoft.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> screens =[
    const HomeScreen(),
    const Orders(),
    const ProfileScreen(),
    
  ];
  List<Widget> _appbar = [];

  @override
  void initState() {
    super.initState();
    _appbar = [
      AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Container(
          width: 257,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xffF2F2F2),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: Font.poppins().copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w900,
                color: const Color.fromARGB(255, 172, 170, 170),
              ),
              prefixIcon: const Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 31.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen2()),
                  );
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/gamer.png'),
              ),
            ),
          ),
        ],
      ),
      AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Orders',
          style: Font.poppins().copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.menu_rounded), onPressed: () {}),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: _appbar[_selectedIndex] as PreferredSizeWidget?,
      body:  screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffFA4A0C),
        onTap: (value){
          setState(() {
            _selectedIndex = value;
          });
        }
      ),
      );
  }
    int _selectedIndex = 0;
}