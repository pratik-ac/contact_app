import 'package:contact_app/features/contacts/presentation/my_contacts.dart';
import 'package:flutter/material.dart';
import '../data/contacts.dart';

class ContactSearchDelegate extends SearchDelegate<String> {
  List<Contacts>frnlist = MyContacts().frnDetail;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Contacts> matchQuery = [];

    for (var fname in frnlist) {
      if (fname.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fname);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(matchQuery[index].name),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (var fname in frnlist) {
      if (fname.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fname.name);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(matchQuery[index]),
        );
      },
    );
  }
}