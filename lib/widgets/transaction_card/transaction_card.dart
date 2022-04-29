import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:personal_transactions/models/transaction.dart';
import 'amount.dart';

class TxCard extends StatelessWidget {
  TxCard(
    this.transaction,
     this.deleteTx,
  );

  final Transaction transaction;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    print(transaction.id);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      elevation: 5,
      child: ListTile(
        leading: Amount(transaction.amount),
        title: Text(
          transaction.id,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(DateFormat.yMMMd().format(transaction.date)),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () => deleteTx(transaction.id),
        ),
      ),
    );
  }
}
