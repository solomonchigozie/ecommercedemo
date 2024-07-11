import 'package:ecommercedemo/components/shoe_tile.dart';
import 'package:ecommercedemo/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Seach',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'Everyone flies, some fly longer than others',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),

        //hit picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥 ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
          //create a shoe
          Shoe shoe = Shoe(
              name: 'Air Jordan',
              price: '24,000',
              imagePath: 'lib/images/air-force1.png',
              description: 'Nice shoe');
          return ShoeTile(
            shoe: shoe,
          );
        }))
      ],
    );
  }
}
