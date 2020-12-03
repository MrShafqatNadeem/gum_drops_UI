import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gum_drops/UI/select_images.dart';
import 'package:image_picker/image_picker.dart';

class Profile_info_update extends StatefulWidget {
  @override
  _Profile_info_updateState createState() => _Profile_info_updateState();
}

class _Profile_info_updateState extends State<Profile_info_update> {


  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  gradient: new LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.red, Colors.purple]),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(1),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            Expanded(
                                child: Text(
                              "Profile info",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                      Text(
                        "Take photos",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: (){
                                  getImage();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.9),
                                    border: Border.all(
                                      width: .1,
                                      color: Colors.white
                                          .withOpacity(.4), //this has no effect
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            15.0) //         <--- border radius here
                                        ),
                                  ),
                                  child: Icon(
                                    Icons.add_a_photo,
                                    color: Colors.red,
                                  ),
                                  width: 100,
                                  height: 150,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.9),
                                  border: Border.all(
                                    width: .1,
                                    color: Colors.white
                                        .withOpacity(.4), //this has no effect
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          15.0) //         <--- border radius here
                                      ),
                                ),
                                child: _image == null ? Icon(Icons.add_a_photo): Image.file(_image),
                                width: 100,
                                height: 150,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return Select_Images();
                                    }));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.9),
                                    border: Border.all(
                                      width: .1,
                                      color: Colors.white
                                          .withOpacity(.4), //this has no effect
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            15.0) //         <--- border radius here
                                        ),
                                  ),
                                  child: Icon(Icons.add_a_photo),
                                  width: 100,
                                  height: 150,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.9),
                                  border: Border.all(
                                    width: .1,
                                    color: Colors.white
                                        .withOpacity(.4), //this has no effect
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          15.0) //         <--- border radius here
                                      ),
                                ),
                                child: Icon(Icons.add_a_photo),
                                width: 100,
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Info",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, top: 8, bottom: 8),
                              child: Container(
                                height: 50,
                                width: 210, //
                                decoration: new BoxDecoration(
                                  color: Colors.white.withOpacity(.4),
                                  border: Border.all(
                                    width: .1,
                                    color: Colors.white
                                        .withOpacity(.4), //this has no effect
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          15.0) //         <--- border radius here
                                      ),
                                ),
                                child: TextField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(left: 15, right: 15),
                                    hintText: "Nick name",
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 100,
                              decoration: new BoxDecoration(
                                color: Colors.white.withOpacity(.4),
                                border: Border.all(
                                  width: .1,
                                  color: Colors.white
                                      .withOpacity(.4), //this has no effect
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        15.0) //         <--- border radius here
                                    ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isExpanded: false,
                                  hint: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Age"),
                                  ),
                                  style: TextStyle(color: Colors.grey),
                                  items: <String>[
                                    '-10',
                                    '10',
                                    '11',
                                    '12',
                                    '13',
                                    '14',
                                    '15',
                                    '16',
                                    '17',
                                    '18',
                                    '19',
                                    '21',
                                    '22',
                                    '23',
                                    '24',
                                    '25',
                                    '26',
                                    '26',
                                    '26+'
                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {
                                    // write your age variable here
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          border: Border.all(
                            width: .1,
                            color: Colors.white
                                .withOpacity(.4), //this has no effect
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  15.0) //         <--- border radius here
                              ),
                        ),
                        child: TextField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 15, right: 15),
                            hintText: "Few words about me..",
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, top: 8, bottom: 8),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: new BoxDecoration(
                                  color: Colors.white.withOpacity(.4),
                                  border: Border.all(
                                    width: .1,
                                    color: Colors.white
                                        .withOpacity(.4), //this has no effect
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          15.0) //         <--- border radius here
                                      ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: false,
                                    hint: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Gender"),
                                    ),
                                    style: TextStyle(color: Colors.grey),
                                    items: <String>[
                                      'Male',
                                      'Female',
                                      'Other',
                                      'none',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {
                                      // write your age variable here
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Container(
                                height: 50,
                                width: 210, //
                                decoration: new BoxDecoration(
                                  color: Colors.white.withOpacity(.4),
                                  border: Border.all(
                                    width: .1,
                                    color: Colors.white
                                        .withOpacity(.4), //this has no effect
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          15.0) //         <--- border radius here
                                      ),
                                ),
                                child: TextField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(left: 15, right: 15),
                                    hintText: "Location",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])))));
  }
}
