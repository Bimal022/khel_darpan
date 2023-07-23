import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:khel_darpan/screens/FreindsPage.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _searchResults = [];

  void _searchUsers(String query) async {
    if (query.isEmpty) {
      setState(() {
        // Clear the search results if the query is empty
        _searchResults.clear();
      });
      return;
    }

    // Perform a Firestore query to find users whose names match the search query
    final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection(
            'users') // Replace with the collection name where user data is stored
        .where('name', isGreaterThanOrEqualTo: query)
        .where('name', isLessThan: query + 'z')
        .limit(10) // Limit the number of results shown in the dropdown
        .get();

    setState(() {
      // Update the search results with the fetched data
      _searchResults = snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                _searchUsers(value);
              },
              decoration: InputDecoration(
                hintText: 'Search by name',
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _searchResults.length,
            itemBuilder: (context, index) {
              final user = _searchResults[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(user['dp']),
                ),
                title: Text(user[
                    'name']), // Replace with the field name containing the user's name
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendsPage(userData: user),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
