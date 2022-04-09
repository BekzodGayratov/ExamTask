import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:examtask/components/my_text_comp.dart';
import 'package:examtask/constants/my_theme.dart';
import 'package:examtask/core/size_config.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.77,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  children: [
                    Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return index != 0
                                  ? Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              getProportionScreenHeight(10.0)),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: MyTheme.myContainerColor,
                                            borderRadius:
                                                BorderRadius.circular(6.0)),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading:
                                                  const Icon(Icons.file_copy),
                                              title: MyText(
                                                  text: "N 154",
                                                  fontSize: 14,
                                                  color: MyTheme.myTextColor,
                                                  fontWeight: FontWeight.w700),
                                              trailing: Chip(
                                                label: Text("Paid"),
                                                backgroundColor:
                                                    MyTheme.myCoupleColor,
                                              ),
                                            ),
                                            ListTile(
                                              title: Row(children: [MyText(text: "Fish", fontSize: 14, color: MyTheme.myTextColor, fontWeight: FontWeight.w500), MyText(text: "Yo'ldosheva Ziyoda", fontSize: 15, color: Colors.red, fontWeight: FontWeight.w600)],)
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Row();
                            },
                            separatorBuilder: (context, index) {
                              return index == 0
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.23),
                                      child: Row(
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: const Text("Contacts")),
                                          const Text(
                                            "Invpices",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )
                                  : Row();
                            },
                            itemCount: 50)),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                color: MyTheme.myContainerColor,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.02,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                              text: "February,2021",
                              fontSize: 18,
                              color: MyTheme.myTextColor,
                              fontWeight: FontWeight.w700),
                          Row(
                            children: [
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: FloatingActionButton(
                                      backgroundColor: Colors.transparent,
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.chevron_left,
                                        size: 35,
                                      ))),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.transparent,
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.chevron_right,
                                      size: 35,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.008),
                        child: DatePicker(
                          DateTime.now(),
                          initialSelectedDate: DateTime.now(),
                          selectionColor: MyTheme.myCoupleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
