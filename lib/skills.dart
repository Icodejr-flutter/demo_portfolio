import 'package:flutter/material.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text(
          "My Skills",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Oswald',
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 800,
          width: 400,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment(-1, -1),
            end: Alignment(1, 1),
            colors: <Color>[
              Color(0xff36d1dc),
              Color(0xff5b86e5),
            ],
          )),
          child: const SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Though a beginner, I have been exploring and trying out new technologies to select my domains. \nI have a decent know-how of html and css for frontend web development.",
                    style: TextStyle(
                      color: Color(0xff000080),
                      fontSize: 25.0,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'lobster',
                    ),
                    ),
                Text(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                      ),
                    '''I also know C++ language and java and currently i am learning Flutter development to make cross platform applications'''),
                  SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('assets/html.png'),
                      height: 100,
                    ),
                    Image(
                      image: AssetImage('assets/css.png'),
                      height: 100,
                    ),
                    Image(
                      image: AssetImage('assets/flutter.png'),
                      height: 100,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('assets/c.png'),
                      height: 100,
                    ),
                    Image(
                      image: AssetImage('assets/c++.png'),
                      height: 100,
                    ),
                    Image(
                      image: AssetImage('assets/java.png'),
                      height: 110,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
