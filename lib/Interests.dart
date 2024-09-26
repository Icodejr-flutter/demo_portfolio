import 'package:flutter/material.dart';

class MyInterest extends StatelessWidget {
  const MyInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text(
          "My hobbies and Interests",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Container(
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                    'Beside my work, i do love to spend some time on my hobbies.'),
                Text(
                    style: TextStyle(
                      color: Color(0xff000080),
                      fontSize: 25.0,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'lobster',
                    ),
                    '''\n I enjoy playing soccer with my friends on the weekends, as it helps me stay active and have fun. 
                    \n I'm also a fan of video games, especially action and adventure genres, which provide a great escape from my daily routine. 
                    \n When I have some free time, I like to watch movies, and my favorite genres are comedies and thrillers because they always keep me entertained. 
                    \n Occasionally, I read books, mainly fiction, with a preference for adventure stories. 
                    \n Overall, I lead a simple life, finding joy in these activities while focusing on my studies. :) '''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
