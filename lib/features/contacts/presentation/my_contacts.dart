import 'package:contact_app/features/contacts/presentation/widgets/contact_card.dart';
import 'package:flutter/material.dart';

import '../data/contacts.dart';
import 'contact_search_delegate.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  final List<Contacts> frnDetail = [
    Contacts("Amit Kumar", "9868710362"),
    Contacts("Ram Yada", "9860033985"),
    Contacts("Krinjal", "9860033985"),
    Contacts("Patrick", "9860033985"),
    Contacts("Hari", "9860033985"),
    Contacts("Krishna", "9860033985"),
    Contacts("Shyam", "9860033985"),
    Contacts("Rattatoulie", "9860033985"),
    Contacts("Gustavo", "9860033985"),
    Contacts("Paris", "9860033985"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: ContactSearchDelegate());
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView.builder(
        itemCount: frnDetail.length,
        itemBuilder: (context, index) {
          return ContactDesign(
              frnDetail[index].name, frnDetail[index].phoneNumber);
        },
      ),
    );
  }
}
