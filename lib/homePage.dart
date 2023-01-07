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
          firstHorizontalListViewDesign(),
          genresTitle(),
          secondHorizontalListViewDesign(),
          libraryTitle(),
          //thirdCardDesign(),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 390,
                      decoration: const BoxDecoration(
                        color: Colors.red
                      ),
                      child: const Text('data'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 390,
                      decoration: const BoxDecoration(
                        color: Colors.red
                      ),
                      child: const Text('data'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 390,
                      decoration: const BoxDecoration(
                        color: Colors.red
                      ),
                      child: const Text('data'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox secondHorizontalListViewDesign() {
    return SizedBox(
      height: 225,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: const Center(
                    // child: Placeholder(
                    //   child: Image.asset('assets/images/madrigal.jpg'),
                    // ),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: const Center(
                    // child: Placeholder(
                    //   child: Image.asset('assets/images/madrigal.jpg'),
                    // ),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: const Center(
                    // child: Placeholder(
                    //   child: Image.asset('assets/images/madrigal.jpg'),
                    // ),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: const Center(
                    // child: Placeholder(
                    //   child: Image.asset('assets/images/madrigal.jpg'),
                    // ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox firstHorizontalListViewDesign() {
    return SizedBox(
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Placeholder(
                    child: Image.asset('assets/images/madrigal.jpg'),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Placeholder(
                    child: Image.asset('assets/images/emrefel.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Flexible thirdCardDesign() {
    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) => const Card(
          color: Colors.white,
          //elevation: 0,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SizedBox(
            height: 75,
          ),
        ),
      ),
    );
  }

  Row libraryTitle() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
          child: const Text(
            'Library',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Row genresTitle() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
          child: const Text(
            'Genres',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
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
