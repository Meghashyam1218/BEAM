import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _controller;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color(0xff432CBA),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Colors.red,
            child: Center(
                child: Container(
              width: 140,
              height: 130,
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.white),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.atozpictures.com/uploads/2016/04/samantha-theri-movie-stills.jpg'))),
            )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Enter a name',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Mobile",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Enter mobile number',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Mail",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Enter mail-id',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
