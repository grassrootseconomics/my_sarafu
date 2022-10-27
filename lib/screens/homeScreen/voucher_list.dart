import 'package:flutter/material.dart';
import 'package:grassroots_flutter/base_widgets/widget.dart';
import 'package:grassroots_flutter/screens/sarafuScreen/sarafu_screen.dart';

class VoucherList extends StatefulWidget {
  const VoucherList({super.key});

  @override
  State<VoucherList> createState() => _VoucherListState();
}

class _VoucherListState extends State<VoucherList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            navigate(context, SarafuScreen());
            // push(context: context, page: SarafuScreen());
          },
          title: Text('Sarafu-$index'),
          subtitle: const Text('0X043fo76dk56c'),
          trailing: const Text(
            '1 SRF',
            style: TextStyle(color: Color(0xFF213656), fontSize: 17),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    ));
  }
}
