import 'package:flutter/material.dart';
import 'package:assign1063/screen2cards.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});
  static String route = '/screen2';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenwidth = mediaQuery.size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
              height: 70,
              width: screenwidth,
              color: Colors.lightBlue,
              child: Row(
                children: [
                  Container(
                      width: 80,
                      height: 70,
                      padding: const EdgeInsets.all(12),
                      child: const CircleAvatar(
                        radius: 30,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage("images/profile.avif"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        /*Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sohail Rana",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),*/
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sohail Rana",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(text: '03231444423 '),
                              WidgetSpan(
                                child: Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  const Icon(Icons.search, color: Colors.white),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
                height: 250,
                width: screenwidth,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: screenwidth / 2,
                      child: Column(
                        children: [
                          Expanded(
                            flex:
                                1, // First container takes 1/6 of available space
                            child: Container(
                              padding: const EdgeInsets.only(top: 20),
                              color: Colors.white,
                              child: const Center(
                                  child: Text(
                                "Account Balance",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            ),
                          ),
                          Expanded(
                            flex:
                                4, // Second container takes 2/6 of available space
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              color: Colors.white,
                              child: Center(
                                child: Container(
                                  width: 150, // Width of the circle
                                  height: 150, // Height of the circle
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$86.25',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 4), // Spacer
                                        Text(
                                          'Available',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex:
                                1, // Third container takes 3/6 of available space
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 15),
                              color: Colors.white,
                              child: const Center(
                                child: Text(
                                  'Details >',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenwidth / 2,
                      child: Column(
                        children: [
                          Expanded(
                            flex:
                                1, // First container takes 1/6 of available space
                            child: Container(),
                          ),
                          Expanded(
                            flex:
                                1, // Second container takes 2/6 of available space
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Icon(
                                        Icons.public,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: const Center(
                                        child: Text('4687 MB'),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            height: 2,
                            color: Color.fromRGBO(228, 227, 227, 0.639),
                          ),
                          Expanded(
                            flex:
                                1, // Third container takes 3/6 of available space
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 55),
                                      child: const Center(
                                        child: Text('236 Min'),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            height: 2,
                            color: Color.fromRGBO(228, 227, 227, 0.639),
                          ),
                          Expanded(
                            flex:
                                1, // Third container takes 3/6 of available space
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Icon(
                                        Icons.message_outlined,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 58),
                                      child: const Center(
                                        child: Text('50 SMS'),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:
                                1, // Third container takes 3/6 of available space
                            child: Container(),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              height: 5,
              color: const Color.fromRGBO(228, 227, 227, 0.639),
            ),
            Container(
              height: 250,
              width: screenwidth,
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 4,
                padding: const EdgeInsets.all(15),
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                children: const [
                  MyCardWidget(
                    imagePath: "images/apps.png",
                    name: "Flexiplan",
                  ),
                  MyCardWidget(
                    imagePath: "images/worldwide.png",
                    name: "Internet",
                  ),
                  MyCardWidget(
                    imagePath: "images/phone-call.png",
                    name: "Minutes",
                  ),
                  MyCardWidget(
                    imagePath: "images/recharge.png",
                    name: "Recharge",
                  ),
                  MyCardWidget(
                    imagePath: "images/price-tag.png",
                    name: "Deals",
                  ),
                  MyCardWidget(
                    imagePath: "images/history.png",
                    name: "History",
                  ),
                  MyCardWidget(
                    imagePath: "images/offer.png",
                    name: "My Offers",
                  ),
                  MyCardWidget(
                    imagePath: "images/play.png",
                    name: "Watch",
                  ),
                ],
              ),
            ),
            const Divider(
              height: 2,
              color: Color.fromRGBO(228, 227, 227, 0.639),
            ),
            SizedBox(
              height: 50,
              width: screenwidth,
              child: const Center(
                child: Text("See More"),
              ),
            ),
            Container(
              height: 5,
              color: const Color.fromRGBO(228, 227, 227, 0.639),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What's new?",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: const Image(
                          image: AssetImage("images/nature1.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: const Image(
                          image: AssetImage("images/nature2.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: const Image(
                          image: AssetImage("images/nature3.avif"),
                          fit: BoxFit.fill,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_offer,
              color: Colors.white,
            ),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.white,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            label: "Account",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              label: "Menu"),
        ],
      ),
    );
  }
}
/*

      */