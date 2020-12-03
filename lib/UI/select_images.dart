import 'package:flutter/material.dart';
import 'package:gum_drops/UI/done_screen.dart';

class Select_Images extends StatefulWidget {
  @override
  _Select_ImagesState createState() => _Select_ImagesState();
}

class _Select_ImagesState extends State<Select_Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(18),
          child: Column(children: [
          Padding(
            padding: EdgeInsets.all(1),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                ),
                Expanded(
                    child: Text(
                      "Images",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    )),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.white.withOpacity(.4),
                    color: Colors.white,
                    gradient: new LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.red, Colors.purple]),
                  ),
                  child: Icon(
                    Icons.mood_bad,size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
            Container(width: MediaQuery.of(context).size.width,child: Text("  Select images",style: TextStyle(fontSize: 24),)),
            Container(
              height: MediaQuery.of(context).size.height*.81,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return All_Done();
                            }));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(.9),
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
                          Icons.check,
                          color: Colors.white.withOpacity(.9),
                        ),
                        width: 100,
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(.9),
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
                          color: Colors.red.withOpacity(.9),
                        ),
                        width: 100,
                        height: 150,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.9),
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
                        color: Colors.red.withOpacity(.9),
                      ),
                      width: 100,
                      height: 150,
                    ),
                  ],),
                  Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.9),
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
                        color: Colors.red.withOpacity(.9),
                      ),
                      width: 100,
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(.9),
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
                          color: Colors.red.withOpacity(.9),
                        ),
                        width: 100,
                        height: 150,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.9),
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
                        color: Colors.red.withOpacity(.9),
                      ),
                      width: 100,
                      height: 150,
                    ),
                  ],),
                  Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.9),
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
                        color: Colors.red.withOpacity(.9),
                      ),
                      width: 100,
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(.9),
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
                          color: Colors.red.withOpacity(.9),
                        ),
                        width: 100,
                        height: 150,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.9),
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
                        color: Colors.red.withOpacity(.9),
                      ),
                      width: 100,
                      height: 150,
                    ),
                  ],),
                  Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.9),
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
                        color: Colors.red.withOpacity(.9),
                      ),
                      width: 100,
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(.9),
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
                          color: Colors.red.withOpacity(.9),
                        ),
                        width: 100,
                        height: 150,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.9),
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
                        color: Colors.red.withOpacity(.9),
                      ),
                      width: 100,
                      height: 150,
                    ),
                  ],),

                ],),
              ),
            )

        ],),),
      ),

    );
  }
}
