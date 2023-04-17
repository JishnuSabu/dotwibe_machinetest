import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            actions: [
              Stack(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.11,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 14.0),
                    child: Image(image: AssetImage("assets/images/bell.png")),
                  ),
                ),
                Positioned(
                    right: 20,
                    top: 4,
                    child: Container(
                      height: 9,
                      width: 9,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)),
                    ))
              ]),
            ],
            bottom: AppBar(
              elevation: 0.5,
              backgroundColor: Colors.white,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello Joseph!",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Auspo.no:AU557373",
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  )
                ],
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 14.0),
                  child:
                  Image(image: AssetImage("assets/images/Profile Img.png")),
                )
              ],
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([CustomGrid()])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: 0,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey[400],
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/home.png")),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/images/customer-support 1.png")),
                label: "Community List"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/group 1.png")),
                label: "Discuss"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Group 1664.png")),
                label: "My Post"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Group 1669.png")),
                label: "Profile")
          ]),
    );
  }
}

class CustomGrid extends StatelessWidget {
  var Title = [
    "PR Pathways",
    "Personal Documents",
    "Agents",
    "Discuss",
    "Visa Process"
  ];

  var bgcolor = [
    Colors.lightBlue[500],
    Colors.red[300],
    Colors.orange[400],
    Colors.purple[200],
    Colors.red[200],
  ];
  var Imagess = [
    "assets/icons/Group 1788.svg",
    "assets/icons/Group 1793.svg",
    "assets/icons/Group 1789.svg",
    "assets/icons/Group 1811.svg",
    "assets/icons/Group 1798.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: Imagess.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 26,
            crossAxisSpacing: 14,
            mainAxisExtent: 220),
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                  color: bgcolor[index],
                  borderRadius: BorderRadius.circular(19)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    Title[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 100,
                    width: 200,
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(Imagess[index])),
                  )
                ],
              ));
        },
      ),
    );
  }
}