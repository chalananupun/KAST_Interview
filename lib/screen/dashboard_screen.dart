import 'package:flutter/material.dart';
import 'package:kast_test/utility/colors.dart';
import 'package:kast_test/utility/strings.dart';
import 'package:kast_test/widget/avata_widget.dart';
import 'package:kast_test/widget/icon_button.dart';

import '../widget/searchbar_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  AvatarWidget(imageUrl: "https://i.ibb.co/C3PYtygq/photo-1633332755192-727a05c4013d.jpg")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SearchBarWidget(
                  callback: (value) {},
                ),
              ),

              const  SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  totalBalanceText,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: kSubTitleTextColor,fontSize: 20),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      "\$23,49.20",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: kTitleTextColor,fontSize: 25,fontWeight: FontWeight.w600),
                    ),

                  IconButtonWidget(onPressed: () {

                  }),

                  ],
                ),
              ),
              const  SizedBox(
                height: 20,
              ),
              Transform.scale(
                scale: 1.4,
                child: Image.asset("assets/card.png")
              ),


            ],
          ),
        ),
      ),
    );
  }
}
