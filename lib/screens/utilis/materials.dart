import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Materials extends StatefulWidget {
  Materials({super.key});

  @override
  State<Materials> createState() => _MaterialsState();
}

class _MaterialsState extends State<Materials> {
  bool _showMaterial = false;
  void _showmaterials() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _showMaterial = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    List<String> list1 = <String>['1', '2', '3', '4', '5', '6', '7', '8'];
    List<String> list2 = <String>['1', '2', '3', '4', '5', '6', '7', '8'];
    String dropdownValue = list.first;
    String dropdownValue1 = list1.first;
    String dropdownValue2 = list2.first;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),

      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          backgroundColor: Color(0xff5240b5),
          shadowColor: Color.fromARGB(0, 220, 30, 30),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: (() {}),
              child: Icon(
                Icons.account_circle_outlined,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (() {
                Navigator.popAndPushNamed(context, '/');
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.home_outlined,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(0xff5240b5),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "Materials",
                  style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 26, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Regulation :",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          print(value);
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Semister    :",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DropdownButton<String>(
                        value: dropdownValue1,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          print(value);
                          setState(() {
                            dropdownValue1 = value!;
                          });
                        },
                        items:
                            list1.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Subject      :",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DropdownButton<String>(
                        value: dropdownValue2,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          print(value);
                          setState(() {
                            dropdownValue2 = value!;
                          });
                        },
                        items:
                            list2.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: _showmaterials, child: Text("Go")),
                ],
              ),
            ),
            if (_showMaterial == true)
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(71, 123, 97, 255),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        title: Text(
                          "Unit-1  Material",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF23262F),
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.download,
                            color: Color(0XFF23262F),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-2  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-3  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-4  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-5  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
