import 'package:flutter/material.dart';

import 'Interests.dart';
import 'skills.dart';

void main() {
  return runApp(const MaterialApp(
    home: MyPortfolio(),
  ));
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: const Text(
            "My portfolio",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("john_doe.jpg"),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment(-1, -1),
                  end: Alignment(1, 1),
                  colors: <Color>[
                    Color(0xff36d1dc),
                    Color(0xff5b86e5),
                  ],
                )),
                accountName: Text(
                  'John Doe',
                  style: TextStyle(
                    color: Color(0xff000080),
                    fontSize: 20,
                  ),
                ),
                accountEmail: Text(
                  'john.doe@gmail.com',
                  style: TextStyle(
                    color: Color(0xff000080),
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyInterest()),
                    );
                  },
                  child: const Text(
                    "Hobbies and interests",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff000080),
                    ),
                  )),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MySkills()),
                  );
                },
                child: const Text(
                  "Skills and academics",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff000080),
                  ),
                ),
              ),
            ],
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
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/portfolioimg.png'),
                    height: 150,
                    width: 300,
                  ),
                  const CircleAvatar(
                    radius: 108,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 104,
                      backgroundColor: Colors.indigo,
                      child: CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('assets/john_doe.jpg'),
                          ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      ('Hello, my name is John Doe. \nI am a student who is in 12th standard'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      ('I am currently venturing into the field of app development.\nAs a  beginner Flutter developer i am excited to explore and work in this domain and build unique projects to showcase my skills. '),
                      style: TextStyle(
                        color: Color(0xff000080),
                        fontSize: 25.0,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyInterest()),
                            );
                          },
                          icon: const Icon(Icons.add_chart_outlined),
                          label: const Text(
                            'My interests',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shadowColor: const Color(0xffffffff),
                              backgroundColor: const Color(0xff000080),
                              foregroundColor: Colors.white // Background color
                              ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MySkills()),
                            );
                          },
                          icon: const Icon(Icons.account_balance_rounded),
                          style: ElevatedButton.styleFrom(
                              shadowColor: const  Color(0xffffffff),
                              backgroundColor: const Color(0xff000080),
                              foregroundColor: Colors.white // Background color
                              ),
                          label: const Text(
                            'My skills',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
