import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Profile Picture
          ClipOval(
            child: Image.network(
              'https://placekitten.com/200/200',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          
          // Name
          Text(
            'ច័ន្ទ សុភា',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[900],
            ),
          ),
          SizedBox(height: 8),
          
          // Bio
          Text(
            'អ្នកអភិវឌ្ឍន៍ Flutter មានបទពិសោធន៍\nស្រឡាញ់ការបង្កើត app សាមញ្ញ និងស្អាត',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}