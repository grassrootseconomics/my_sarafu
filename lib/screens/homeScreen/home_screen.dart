// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grassroots_flutter/base_widgets/bottom_navigaton_bar.dart';
import 'package:grassroots_flutter/base_widgets/widget.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/screens/homeScreen/transactions.dart';
import 'package:grassroots_flutter/screens/homeScreen/voucher_list.dart';

import '../vouchers/send_voucher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage(userIcon)),
                          Container(
                            // color: Colors.red,
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  logoWhite,
                                  width: 12,
                                  color: lightWhiteColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'My  Sarafu',
                                  style: TextStyle(
                                      fontSize: 20, color: lightWhiteColor),
                                ),
                              ],
                            ),
                          ),
                          // Expanded(child: Container()),
                          Stack(
                            children: const [
                              Icon(
                                Icons.notifications_outlined,
                                color: Colors.white,
                                size: 30.65,
                              ),
                              Positioned(
                                  right: 5,
                                  top: 6,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 4,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),

                    // automaticallyImplyLeading: false,
                    backgroundColor: onboardHeadingColor,
                    expandedHeight: 200.0,
                    floating: false,
                    pinned: true,

                    flexibleSpace: FlexibleSpaceBar(
                      // centerTitle: true,

                      background: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // const Text(
                          //   'Total balance',
                          //   style:
                          //       TextStyle(fontSize: 18, color: lightWhiteColor),
                          // ),
                          // const Text(
                          //   '500 SRF',
                          //   style: TextStyle(fontSize: 36, color: Colors.white),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              circleIconWithText(
                                icon: const Icon(Icons.upload,
                                    color: Colors.white),
                                text: 'Send',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SendVoucher(),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              circleIconWithText(
                                icon: const Icon(Icons.download,
                                    color: Colors.white),
                                text: 'Receive',
                                onTap: () {},
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      const TabBar(
                        indicator: BoxDecoration(
                            // borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 213, 221, 239)),
                        labelColor: customcolor1,
                        unselectedLabelColor: customcolor3,
                        indicatorColor: Color.fromARGB(255, 213, 221, 239),
                        tabs: [
                          Tab(text: "Vouchers"),
                          Tab(text: "Transactions"),
                        ],
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: const TabBarView(
                  children: [VoucherList(), TransactionList()])),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 213, 221, 239), width: 0.8))),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
