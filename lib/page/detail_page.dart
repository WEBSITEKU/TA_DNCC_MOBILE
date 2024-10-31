import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 220,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/3.jpg'), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bakso Urat',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lunch',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.timelapse),
                    SizedBox(
                      width: 2,
                    ),
                    Text('20 Min'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.attach_money_outlined),
                    Text('10'),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text('4.7'),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                ),
                Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    'Bakso Urat adalah makanan yang sangat lezat dan segar, cocok untuk disantap di siang hari. Bakso Urat sangat cocok disantap dengan ditemani es teh.'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ingredient',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('1. Daging\n2.Urat\n3. Tepung\n4.air')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
