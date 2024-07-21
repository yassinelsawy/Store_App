
import 'package:flutter/material.dart';
import 'package:flutter_task_4/home_page.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/avocado.png'),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 20),
          const Text('No orders yet',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const Text('Hit the orange button down\n below to Create an order',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 314,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffFA4A0C),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, 
                MaterialPageRoute(builder: (context) => const HomePage()),
                (Route<dynamic>route) => false);
              },
              child: const Text('Start Ordering',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}