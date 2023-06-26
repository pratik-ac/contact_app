import 'package:contact_app/features/contacts/presentation/my_contacts.dart';
import 'package:contact_app/features/contacts/presentation/widgets/search_contact_cards.dart';
import 'package:flutter/material.dart';
import '../data/contacts.dart';

class ContactSearchDelegate extends SearchDelegate<String> {
  List<Contacts> frnlist = MyContacts().frnDetail;
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
    return searchResultList(match: matchQuery, friend: frnlist);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Contacts> matchQuery = [];
    return searchResultList(match: matchQuery, friend: frnlist);
  }

  Widget searchResultList({required List<Contacts> match, required List<Contacts> friend}) {
    List<Contacts> match = [];
    for (var fname in friend) {
      if (fname.name.toLowerCase().contains(query.toLowerCase())) {
        match.add(fname);
      }
    }
    return ListView.builder(
      itemCount: match.length,
      itemBuilder: (context, index) {
      return ContactCards(match[index].name, match[index].phoneNumber);
      },
    );
  }
}
