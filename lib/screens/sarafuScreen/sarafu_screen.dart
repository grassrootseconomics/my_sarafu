import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grassroots_flutter/base_widgets/bottom_navigaton_bar.dart';
import 'package:grassroots_flutter/base_widgets/widget.dart';
import 'package:grassroots_flutter/constants/const.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';
import 'package:grassroots_flutter/constants/json_const.dart';
import 'package:grassroots_flutter/models/sarafu_data_model.dart';

class SarafuScreen extends StatefulWidget {
  const SarafuScreen({super.key});

  @override
  State<SarafuScreen> createState() => _SarafuScreenState();
}

class _SarafuScreenState extends State<SarafuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: onboardHeadingColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            const Text(
              'SRF',
              style: TextStyle(fontSize: 20, color: lightWhiteColor),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Info',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            heightSpace(context, 0.05),
            const Text(
              'Total balance',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const Text(
              '500 SRF',
              style: TextStyle(fontSize: 36, color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                circleIconWithText(
                  icon: const Icon(Icons.upload, color: Colors.white),
                  text: 'Send',
                  textColor: onboardHeadingColor,
                  fontSize: 16.0,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                circleIconWithText(
                  icon: const Icon(Icons.download, color: Colors.white),
                  text: 'Receive',
                  textColor: onboardHeadingColor,
                  fontSize: 16.0,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                circleIconWithText(
                  icon: const Icon(Icons.copy, color: Colors.white),
                  text: 'Copy',
                  textColor: onboardHeadingColor,
                  fontSize: 16.0,
                  onTap: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            builder()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: 0),
    );
  }

  builder() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: sarafuData.length,
        itemBuilder: (context, index) {
          SarafuModel sarfuModel = SarafuModel.fromJson(sarafuData[index]);
          return Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sarfuModel.date.toString(),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                heightSpace(context, 0.02),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: sarfuModel.data?.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      contentPadding: EdgeInsets.only(left: 5, right: 14),
                      leading: CircleAvatar(
                        backgroundColor: (sarfuModel.data?[i].isSent == true)
                            ? Colors.redAccent.withOpacity(0.3)
                            : Colors.greenAccent.withOpacity(0.3),
                        child: Icon(
                          (sarfuModel.data?[i].isSent == true)
                              ? Icons.trending_up
                              : Icons.trending_down,
                          color: index.isOdd ? Colors.red : Colors.green,
                        ),
                      ),
                      title: Text(
                        sarfuModel.data![i].title.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 17),
                      ),
                      subtitle: Text(sarfuModel.data![i].subtitle.toString()),
                      trailing: Text(
                        sarfuModel.data![i].trailing.toString(),
                        style:
                            TextStyle(color: Color(0xFF213656), fontSize: 17),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        });
  }
}
