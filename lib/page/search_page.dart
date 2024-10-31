import 'package:flutter/material.dart';
import 'package:mobile_tugas_akhir/config/color_config.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Center(
              child: Text(
                'Search Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: ColorConfig.primaryColor),
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/6.jpeg'),
                  maxRadius: 30,
                ),
                title: Text(
                  'Pancake',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Snack'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/5.jpeg'),
                  maxRadius: 30,
                ),
                title: Text(
                  'Sate Kambing Muda',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Dinner'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/4.jpeg'),
                  maxRadius: 30,
                ),
                title: Text(
                  'Nasi Rames',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Lunch'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/1.jpg'),
                  maxRadius: 30,
                ),
                title: Text(
                  'Martabak',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Snack'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/2.jpg'),
                  maxRadius: 30,
                ),
                title: Text(
                  'Bakso Mercon',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Lunch'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/3.jpg'),
                  maxRadius: 30,
                ),
                title: Text(
                  'Bakso Urat',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Lunch'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
