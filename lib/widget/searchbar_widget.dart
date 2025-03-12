import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kast_test/utility/colors.dart';
import 'package:kast_test/utility/common_utility.dart';

import '../utility/strings.dart';

class SearchBarWidget extends StatefulWidget {

  final Function(String? keyword) callback;
  const SearchBarWidget({required this.callback});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: CommonUtility.getDeviceScreenSize(context).width * 0.9 ,
      height: 70,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 10),
            child: new Image.asset(
              'assets/inactive_search_icon.png',
              height: 25,
              width: 25,
              color: kPrimaryColor,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: TextField(
                onChanged: (value) =>
                widget.callback != null ? widget.callback!(value) : {},
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding:
                      const EdgeInsets.only(top: 10.0, bottom: 10.0),

                    ),
                    hintText: searchText,
              ),
            ),
    ),
          ),
        ],
      ),
      decoration: BoxDecoration(color: kSearchBarBgColor,borderRadius: BorderRadius.circular(15),

      ),
    );
  }
}
