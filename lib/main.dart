import 'package:assignment_figma/section_header.dart';
import 'package:assignment_figma/service_package.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'deal_card.dart';
import 'event_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(88, 76, 244, 1),
        title: const Row(
          children: [
            Icon(Icons.menu, color: Colors.white),
            SizedBox(
              width: 8,
            ),
            Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          badges.Badge(
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
            ),
            position: badges.BadgePosition.topEnd(top: 5, end: 5),
            child: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline, color: Colors.white),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(title: "Nearby Users"),
              SizedBox(
                width: 15,
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/Ankita.png'),
                    ),
                    Text("Ankita")
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/Pankaj.png'),
                    ),
                    Text("Pankaj")
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/Ellipse 43.png',
                      ),
                    ),
                    Text("Manisha")
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/Ellipse 44.png',
                      ),
                    ),
                    Text("Suresh")
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/Ellipse 45.png',
                      ),
                    ),
                    Text("Ankur")
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/Ellipse 43.png',
                      ),
                    ),
                    Text("Deepesh")
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/Ellipse 48.png',
                      ),
                    ),
                    Text("Jaideep")
                  ]),
                ]),
              ),
              SizedBox(height: 20),
              SectionHeader(title: "Deals of the Day"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DealCard(
                    title: 'Racing Dual Visor Helmet',
                    price: '₹4,079',
                    originalPrice: '₹5,099',
                    discount: '20% Off',
                    rating: '4.8',
                    image: 'assets/images/Rectangle 315.png',
                  ),
                  DealCard(
                    title: 'Aerodynamic Helmet',
                    price: '₹2,799',
                    originalPrice: '₹3,499',
                    discount: '20% Off',
                    rating: '4.5',
                    image: 'assets/images/Rectangle 316.png',
                  ),
                  DealCard(
                    title: 'Racing Dual Visor Helmet',
                    price: '₹4,079',
                    originalPrice: '₹5,099',
                    discount: '20% Off',
                    rating: '4.8',
                    image: 'assets/images/Rectangle 315.png',
                  ),
                ],
              ),
              SizedBox(height: 20),
              SectionHeader(title: "Upcoming Events"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    EventCard(
                        image: 'assets/images/Rectangle 172.png',
                        title: 'Shimla to Manali'),
                    EventCard(
                        image: 'assets/images/Rectangle 173.png',
                        title: 'Goa to Gujarat'),
                    EventCard(
                        image: 'assets/images/Rectangle 174.png',
                        title: 'Kashmir Trip'),
                    EventCard(
                        image: 'assets/images/Rectangle 172.png',
                        title: 'Shimla to Manali'),
                    EventCard(
                        image: 'assets/images/Rectangle 173.png',
                        title: 'Goa to Gujarat'),
                    EventCard(
                        image: 'assets/images/Rectangle 172.png',
                        title: 'Shimla to Manali'),
                    EventCard(
                        image: 'assets/images/Rectangle 173.png',
                        title: 'Goa to Gujarat'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SectionHeader(title: "Buy Service Packages"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ServicePackage(
                    title: 'Annual Maintenance',
                    price: '₹900',
                    originalPrice: '₹1,000',
                    discount: '10% Off',
                    image: 'assets/images/Rectangle 317.png',
                  ),
                  ServicePackage(
                    title: 'Teflon Coating',
                    price: '₹1,350',
                    originalPrice: '₹1,500',
                    discount: '10% Off',
                    image: 'assets/images/Rectangle 318.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(Icons.medical_services), label: "Care"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Community"),
        ],
      ),
    );
  }
}
