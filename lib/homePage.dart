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
          thirdVerticalListViewDesign(),
        ],
      ),
    );
  }

  SizedBox thirdVerticalListViewDesign() {
    return SizedBox(
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
                    decoration: const BoxDecoration(color: Colors.red),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: ClipRRect(
                            child: Image.asset('assets/images/alabora.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 390,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: ClipRRect(
                        child: Image.asset('assets/images/sirens.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 390,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: ClipRRect(
                        child: Image.asset('assets/images/worlds_apart.jpg'),
                      ),
                    ),
                  ),
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
              child: SizedBox(
                width: 200,
                child: Center(
                  child: Placeholder(
                    child: Image.asset('assets/images/ellerin_uzansa.jpg'),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                width: 200,
                child: Center(
                  child: Placeholder(
                    child: Image.asset('assets/images/bilmeden_guzel.jpg'),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                width: 200,
                child: Center(
                  child: Placeholder(
                    child: Image.asset('assets/images/bana_unutmayi_anlat.jpg'),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                width: 200,
                child: Center(
                  child: Placeholder(
                    child: Image.asset('assets/images/kirlangic.jpg'),
                  ),
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
