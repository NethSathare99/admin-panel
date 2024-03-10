import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isExpanded = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Row(
        children: [
          NavigationRail(
            extended: isExpanded,
            backgroundColor: Colors.green.shade400,
            unselectedIconTheme: IconThemeData(color: Colors.white, opacity: 1),
            unselectedLabelTextStyle: TextStyle(
              color: Colors.white,
            ),
            selectedIconTheme: IconThemeData(color: Colors.green.shade900),
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.lunch_dining),
                label: Text("Product Management"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.menu_book),
                label: Text("Order Management"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.feedback),
                label: Text("Feedback "),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.insert_chart),
                label: Text("Reports"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text("Profile"),
              ),
              
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });

              switch (_selectedIndex) {
                case 0:
                  break;
                case 1:
                  Navigator.pushNamed(context, '/product_management');
                  break;
                case 2:
                  Navigator.pushNamed(context, '/order_management');
                  break;
                case 3:
                  Navigator.pushNamed(context, '/feedback');
                  break;
                case 4:
                  Navigator.pushNamed(context, '/reports');
                  break;
                case 5:
                  Navigator.pushNamed(context, '/profile');
                  break;
                
              }
            },
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(60.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          icon: Icon(Icons.menu),
                        ),
                        
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildStatCard("Users", "10K", Icons.people, Colors.blue),
                        buildStatCard("Active", "2.5K", Icons.person, Colors.green),
                        buildStatCard("New", "1K", Icons.person_add, Colors.orange),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildStatCard("Revenue", "\$50K", Icons.monetization_on, Colors.purple),
                        buildStatCard("Sales", "1.5K", Icons.shopping_cart, Colors.red),
                        buildStatCard("Orders", "500", Icons.assignment, Colors.teal),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Product Metrics ",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 20.0),
                   
                    Text(
                      "Graphs and Charts ",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 20.0),
                   
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.green.shade400,
      ),
    );
  }

  Widget buildStatCard(String title, String value, IconData icon, Color color) {
    return Flexible(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 26.0,
                    color: color,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 26.0,
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 36,
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
