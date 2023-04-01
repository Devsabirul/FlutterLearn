import 'package:flutter/material.dart';

class SimpleUi extends StatelessWidget {
  const SimpleUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 12, 11, 11),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.transparent,
              child: const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Hello Alexo son,",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 238, 238, 238),
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                  trailing: Icon(
                    color: Color.fromARGB(255, 238, 238, 238),
                    Icons.add_alert_sharp,
                    size: 30.0,
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover),
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10.0, bottom: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Latest Song",
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 238, 238, 238)),
                            ),
                            const Expanded(
                              child: Text(
                                "By Arohi Akter",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 238, 238, 238)),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              child: const Text("Listen Now"),
                            )
                          ],
                        ),
                      ),
                      Image.asset('assets/images/music_hero.png')
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "Fetured Artst",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/avatar.png",
                        height: 70,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "HELLO",
                        style: TextStyle(color: Colors.white),
                      ),
                      Image.asset(
                        "assets/images/avatar.png",
                        height: 70,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "HELLO",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
