import 'package:contactsave/second.dart';
import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  late String number;
  TextEditingController numbercontroller = TextEditingController();
  // ignore: unused_field
  SnackBar _snac = SnackBar(
    content: Text("Must enter Name and Phone number"),
    duration: Duration(seconds: 5),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => contact(),
                            ));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.green,
                        size: 30,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Create new contact',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      if (numbercontroller.text.isNotEmpty)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => contact(),
                            ));
                    },
                    child: InkWell(
                      onTap: () {
                        var namecontroller;
                        numbercontroller.text.isNotEmpty &&
                                namecontroller.text.isNotEmpty
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => contact(),
                                ))
                            : ScaffoldMessenger.of(context).showSnackBar(_snac);
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.green),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                height: 350,
                width: 450,
                color: Color.fromARGB(210, 82, 147, 84),
                child: Icon(
                  Icons.person,
                  size: 360,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 480, left: 30),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(00, 1))
                  ],
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 300),
                  //center potion
                  child: Icon(
                    Icons.sim_card_outlined,
                    color: Colors.green,
                    size: 45,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 350),
              child: Icon(
                Icons.camera_alt,
                size: 50,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 510),
              child: Text(
                'Saving To',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 541),
              child: Text(
                'MTN GH',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300, top: 505),
              child: Icon(
                Icons.expand_more,
                size: 55,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 25),
              child: Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(00, 1))
                  ],
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 855, left: 145),
              child: Text(
                'MORE FIELDS',
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 625, left: 45),
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 615, left: 70),
              child: SizedBox(
                height: 30,
                width: 190,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "enter your first name"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 615, left: 300),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.green,
                size: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650, left: 70),
              child: SizedBox(
                height: 30,
                width: 190,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), hintText: "last name"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 690, left: 70),
              child: SizedBox(
                height: 30,
                width: 190,
                child: TextField(
                    controller: numbercontroller,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(), hintText: "phone")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 720, left: 70),
              child: SizedBox(
                height: 30,
                width: 120,
                child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(), hintText: "mobile")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 720, left: 160),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.green,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 760, left: 70),
              child: SizedBox(
                height: 30,
                width: 190,
                child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(), hintText: "email")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 790, left: 70),
              child: SizedBox(
                height: 30,
                width: 120,
                child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(), hintText: "home")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 790, left: 150),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.green,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
