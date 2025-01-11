import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/news_details_screen.dart';
import 'package:flutter_news_app/widgets/news_item.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int _currentIndex = 0; // Tracks the selected tab

  List<Map<String, String?>> newsItems = [
    {
      'title':
          'Maharastra Board Result 2024 Live: Check updates on Maha SSC, HSC result dates',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Education',
      'publishAt': 'Published 47 mins ago',
      'id': '1',
    },
    {
      'title': 'Tech Innovations in 2024: What to Expect',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Technology News',
      'publishAt': 'Published 1 hour ago',
      'id': '2',
    },
    {
      'title': 'Health Benefits of Yoga in 2024',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Health Daily',
      'publishAt': 'Published 2 hours ago',
      'id': '3',
    },
    {
      'title':
          'Maharastra Board Result 2024 Live: Check updates on Maha SSC, HSC result dates',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Education',
      'publishAt': 'Published 47 mins ago',
      'id': '4',
    },
    {
      'title': 'Tech Innovations in 2024: What to Expect',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Technology News',
      'publishAt': 'Published 1 hour ago',
      'id': '5',
    },
    {
      'title': 'Health Benefits of Yoga in 2024',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Health Daily',
      'publishAt': 'Published 2 hours ago',
      'id': '6',
    },
    {
      'title':
          'Maharastra Board Result 2024 Live: Check updates on Maha SSC, HSC result dates',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Education',
      'publishAt': 'Published 47 mins ago',
      'id': '7',
    },
    {
      'title': 'Tech Innovations in 2024: What to Expect',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Technology News',
      'publishAt': 'Published 1 hour ago',
      'id': '8',
    },
    {
      'title': 'Health Benefits of Yoga in 2024',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Health Daily',
      'publishAt': 'Published 2 hours ago',
      'id': '9',
    },
    {
      'title':
          'Maharastra Board Result 2024 Live: Check updates on Maha SSC, HSC result dates',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Education',
      'publishAt': 'Published 47 mins ago',
      'id': '10',
    },
    {
      'title': 'Tech Innovations in 2024: What to Expect',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Technology News',
      'publishAt': 'Published 1 hour ago',
      'id': '11',
    },
    {
      'title': 'Health Benefits of Yoga in 2024',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
      'publisher': 'Health Daily',
      'publishAt': 'Published 2 hours ago',
      'id': '12',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: Colors.transparent,
              ),
              labelColor: Colors.black,
              // Selected tab text color
              unselectedLabelColor: Colors.grey,
              // Unselected tab text color
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold, // Bold text for selected tab
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight:
                    FontWeight.normal, // Normal text for unselected tabs
              ),
              tabs: [
                Tab(text: "All"),
                Tab(text: "Politics"),
                Tab(text: "Sports"),
                Tab(text: "Health"),
                Tab(text: "Tech")
              ],
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                icon: const Icon(Icons.menu), // Hamburger icon
                onPressed: () {
                  // Handle menu button press
                },
              ),
            ),
            title: const Text(
              'Grand News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            // Centers the title
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    //TODO
                    // Handle notification button press
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            // Highlights the selected tab
            onTap: (index) {
              setState(() {
                _currentIndex = index; // Update the selected index
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Bookmarks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.blue,
            // Color for the selected item
            unselectedItemColor: Colors.grey, // Color for unselected items
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: newsItems.map((news) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: NewsItem(
                    id: news['id']!,
                    title: news['title']!,
                    publisher: news['publisher']!,
                    publishAt: news['publishAt']!,
                    imageUrl: news['imageUrl'],
                    onTap: (id) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            NewsDetailsScreen(newsId: id),
                      ));
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }
}
