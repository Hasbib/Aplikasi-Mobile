import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search',
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> allItems = [
    'One Piece: STAMPEDE',
    'Naruto: Shippuden',
    'Haikyu',
    'Boku no Hero',
    'Kimetsu No Yaiba',
    'Hunter x Hunter',
    'Dr.Stone',
    'Blue Lock'
  ];
  late List<String> displayedItems;

  @override
  void initState() {
    super.initState();
    displayedItems = List.from(allItems);
  }

  void onSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        displayedItems = List.from(allItems);
      } else {
        displayedItems = allItems
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(allItems, onSearch, displayedItems),
              );
            },
          ),
        ],
      ),
      
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/onepiece.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("One Piece"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/naruto.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Naruto"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/kny.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Kimetsu no Yaiba"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/bluelock.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Blue Lock"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/haikyu.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Haikyu"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/hunter.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Hunter x Hunter"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/bnh.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Boku no Hero"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          child: Image(
                            image: AssetImage('assets/drstone.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 13),
                          child: Row(
                            children: [
                              Text("Dr.Stone"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue),
            label: 'Search', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile', 
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
              break;
              case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
              break;
          }
        },
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<String> items;
  final Function(String) onSearch;
  final List<String> displayedItems;

  CustomSearchDelegate(this.items, this.onSearch, this.displayedItems);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
          onSearch(query);
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final result = items
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView(
      children: result.map((item) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            height: 200,
            color: Colors.blue[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 170,
                  child: item.toLowerCase().contains("one piece")
                      ? Image(
                          image: AssetImage('assets/onepiece.png'),
                          fit: BoxFit.cover,
                        )
                      : item.toLowerCase().contains("naruto")
                          ? Image(
                              image: AssetImage('assets/naruto.png'),
                              fit: BoxFit.cover,
                            )
                          : item.toLowerCase().contains("haikyu")
                              ? Image(
                                  image: AssetImage('assets/haikyu.png'),
                                  fit: BoxFit.cover,
                                )
                              : item.toLowerCase().contains("boku no hero")
                                  ? Image(
                                      image: AssetImage('assets/bnh.png'),
                                      fit: BoxFit.cover,
                                    )
                                  : item.toLowerCase().contains("kimetsu")
                                      ? Image(
                                          image: AssetImage('assets/kny.png'),
                                          fit: BoxFit.cover,
                                        )
                                      : item.toLowerCase().contains("hunter")
                                          ? Image(
                                              image: AssetImage('assets/hunter.png'),
                                              fit: BoxFit.cover,
                                            )
                                          : item.toLowerCase().contains("dr")
                                              ? Image(
                                                  image: AssetImage('assets/drstone.png'),
                                                  fit: BoxFit.cover,
                                                )
                                              : item.toLowerCase().contains("blue lock")
                                                  ? Image(
                                                      image: AssetImage('assets/bluelock.png'),
                                                      fit: BoxFit.cover,
                                                    )
                                                  : Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 13),
                  child: Row(
                    children: [
                      Text(item),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? items
        : items
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            onSearch(query);
            close(context, query);
          },
        );
      },
    );
  }
}
