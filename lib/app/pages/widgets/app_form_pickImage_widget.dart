import 'dart:io';

import 'package:flutter/material.dart';
import 'package:guard_app/utility/helper/function_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sizer/sizer.dart';

import 'appCircleButton_widget.dart';

class FormPickImage extends StatelessWidget {
  final Function(List<XFile>) files;
  final file = BehaviorSubject<List<XFile>>();

  FormPickImage({Key? key, required this.files}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<List<XFile>>(
            stream: file.stream,
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? Container(
                      margin: EdgeInsets.only(
                          left: 2.w, top: file.hasValue ? 2.h : 0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        // to disable GridView's scrolling
                        shrinkWrap: true,
                        childAspectRatio: 0.38.w,
                        mainAxisSpacing: 2.w,
                        crossAxisSpacing: 2.w,
                        // You won't see infinite size error
                        children: snapshot.data!
                            .asMap()
                            .map((key, value) => MapEntry(
                                key,
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(1.w),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          child: Stack(
                                            children: [
                                              Container(
                                                color: Colors.grey.shade100,
                                              ),
                                              Center(
                                                child: Image.file(
                                                    File(value.path)),
                                              )
                                            ],
                                          )),
                                    ),
                                    Positioned(
                                        right: 0,
                                        top: 0,
                                        child: Material(
                                          elevation: 1.0,
                                          clipBehavior: Clip.hardEdge,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.white,
                                          child: GestureDetector(
                                            onTap: () {
                                              file.add(
                                                  file.value..remove(value));
                                              files(file.value);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(1.w),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Colors.red,
                                                      width: 1.4)),
                                              child: Icon(
                                                Icons.close,
                                                size: 4.w,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ))
                                  ],
                                )))
                            .values
                            .toList(),
                      ),
                    )
                  : SizedBox();
            }),
        Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 2.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CircleButton(
                  size: 10.w,
                  iconData: Icons.add,
                  onTap: () {
                    FunctionHelper.dialogPickImage((value) {
                      file.add(value);
                      files(value);
                    }, temp: file.hasValue ? file.value : []);
                  },
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
