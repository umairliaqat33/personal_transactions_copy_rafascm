import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
 Amount(
     this.amount,
     );

  final double amount;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      child: Padding(
        padding: EdgeInsets.all(6),
        child: FittedBox(
          child: Text('\$${amount.toStringAsFixed(2)}'),
        ),
      ),
    );
  }
}
