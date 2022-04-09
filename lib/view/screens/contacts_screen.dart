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
       Expanded(
         flex: 3,
         child:  Container(
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
        ),),
       Expanded(
         flex: 8,
         child: Text("Hello"))

      ],
    );
  }
}
