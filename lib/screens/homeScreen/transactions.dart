import 'package:flutter/material.dart';


class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: index.isOdd
                ? Colors.redAccent.withOpacity(0.3)
                : Colors.greenAccent.withOpacity(0.3),
            child: Icon(
              index.isOdd ? Icons.trending_up : Icons.trending_down,
              color: index.isOdd ? Colors.red : Colors.green,
            ),
          ),
          title: Text(
            index.isOdd ? 'Sent Sarafu' : 'Received Sarafu',
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
          ),
          subtitle: const Text('27/09/2022'),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                '1 SRF',
                style: TextStyle(color: Color(0xFF213656), fontSize: 17),
              ),
              const Text('0X043fo76dk56c'),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    ));
  }
}
