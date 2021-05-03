import 'package:flutter/material.dart';
import 'package:scorebord/widget/communmodual.dart';
import 'package:scorebord/widget/reuseblecard.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData.dark()
      home: Scaffold(
        appBar: AppBar(
          actions: [buildIconButton()],
        ),
        body:
            // ReusableCard(colour: Colors.black38),

            Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.bottomSheet(
              Container(
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                height: 500,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 50,
                      child: Divider(
                        thickness: 2,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              isDismissible: false,
              enableDrag: false,
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
