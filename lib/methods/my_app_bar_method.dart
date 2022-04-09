import 'package:examtask/components/my_text_comp.dart';
import 'package:examtask/constants/my_theme.dart';
import 'package:flutter/material.dart';


AppBar myAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: MyTheme.myIconsColor,
      ),
      leadingWidth: MediaQuery.of(context).size.width * 0.4,
      leading: Row(children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02),
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/contacts/logo.png"),
          ),
        ),
        MyText(
            text: "Contacts",
            fontSize: 18,
            color: MyTheme.myTextColor,
            fontWeight: FontWeight.w500)
      ]),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015),
          child: const Text(
            "|",
            style: TextStyle(fontSize: 25),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.search))
      ],
    );
  }