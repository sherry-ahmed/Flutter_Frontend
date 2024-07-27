import 'package:flutter/material.dart';
import 'package:assign1063/cardcolumn.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenheight = mediaQuery.size.height;
    final pinkheight = screenheight / 4;
    //final blueheight = screenheight - pinkheight;
    String calendarImage = 'images/calendar.png';
    String activityImage = 'images/activity.png';
    String todoImage = 'images/todo.png';
    String locationImage = 'images/location.png';
    String settingImage = 'images/setting.png';
    String groceryImage = 'images/grocery.png';
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: pinkheight,
                color: const Color.fromARGB(255, 57, 28, 78),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: const Color.fromARGB(255, 57, 28, 78),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: const Color.fromARGB(255, 57, 28, 78),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'MyFamily',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 100.0),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.message,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Add your action here
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Home',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.18),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 57, 28, 78),
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(15),
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    children: [
                      Card(
                        color: const Color.fromARGB(255, 92, 65, 108),
                        child: SizedBox(
                            width: 100,
                            height: 100,
                            child: MyCardWidget(
                               
                                imagePath: calendarImage,
                                title: "Calendar",
                                subtitle: "March, Wednesday",
                                description: "3 Events")),
                      ),
                      
                         Card(
                          color: const Color.fromARGB(255, 92, 65, 108),
                          
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: MyCardWidget(
                                
                                imagePath: groceryImage,
                                title: "Groceries",
                                subtitle: "Bocali, Apple",
                                description: "4 Items",
                              ),
                            ),
                          ),
                        
                      
                      Card(
                        color: const Color.fromARGB(255, 92, 65, 108),
                        child: SizedBox(
                            width: 100,
                            height: 100,
                            child: MyCardWidget(
                                
                                imagePath: locationImage,
                                title: "Locations",
                                subtitle: "Sherry going to Office",
                                description: "")),
                      ),
                      Card(
                        color: const Color.fromARGB(255, 92, 65, 108),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/screen2');
                          },
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child: MyCardWidget(
                                  
                                  imagePath: activityImage,
                                  title: "Activity",
                                  subtitle: "Amir favourited your Post",
                                  description: "")),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(255, 92, 65, 108),
                        child: SizedBox(
                            width: 100,
                            height: 100,
                            child: MyCardWidget(
                                
                                imagePath: todoImage,
                                title: "To Do",
                                subtitle: "Assignment, Designs",
                                description: "4 Items")),
                      ),
                      Card(
                        color: const Color.fromARGB(255, 92, 65, 108),
                        child: SizedBox(
                            width: 100,
                            height: 100,
                            child: MyCardWidget(
                                
                                imagePath: settingImage,
                                title: "Settings",
                                subtitle: "",
                                description: "2 Items")),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
