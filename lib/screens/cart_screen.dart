import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Column(children: <Widget>[
        Card(
          margin: const EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 10),
                Chip(
                  label: Text('\$${cart.totalAmount}'),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
