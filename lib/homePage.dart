import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050019),
      appBar: customAppBar(),
      body: Column(
        children: [
          firstCardDesign(context),
          Row(
            children: const [
              SizedBox(
                height: 50,
                child: Text(
                  'Genres',
                  style: TextStyle(color: Colors.white, fontSize: 30), 
                ),
              ),
            ],
          ),
          secondCardDesign(context),
        ],
      ),
    );
  }

  SizedBox secondCardDesign(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: const [
                    Flexible(
                      child: Placeholder(
                          /*child: Image.asset('assets/images/madrigal2.jpeg')*/),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  SizedBox firstCardDesign(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: const [
                    Flexible(
                      child: Placeholder(
                          /*child: Image.asset('assets/images/madrigal2.jpeg')*/),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: moodTitle(),
      centerTitle: false,
    );
  }

  Row moodTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Mood',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/pp.jpeg'),
          ),
        ),
      ],
    );
  }
}
