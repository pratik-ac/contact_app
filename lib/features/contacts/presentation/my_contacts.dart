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
          IconButton(onPressed: () {
            showSearch(context: context, delegate: ContactSearchDelegate());
          }, icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView.builder(
        itemCount: frnDetail.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  minLeadingWidth: 20,
                  title: Text(frnDetail[index].name),
                  subtitle: Text(frnDetail[index].phoneNumber),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
