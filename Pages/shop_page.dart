import 'package:eapp/components/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    //alert the user shoe successfully added
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text(
                'Successfully added to card!',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              content: Text(
                'Check your cart',
                style: TextStyle(color: Colors.grey),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //search bar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[100],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        //color: Colors.black,
                      )
                    ],
                  ),
                ),
                //message
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      'Everyone flies',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),

                //hot picks
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hot Picks ❤️‍🔥',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 50),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          onTap: () => addShoeToCart(shoe),
                          shoe: shoe,
                        );
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
