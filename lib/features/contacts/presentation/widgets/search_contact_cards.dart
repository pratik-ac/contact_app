import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactCards extends StatelessWidget {
  String name, phoneNumber;
  ContactCards(this.name,this.phoneNumber);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const Icon(
          Icons.person,
          color: Colors.red,
        ),
        minLeadingWidth: 20,
        title: Text(name),
        subtitle: Text(phoneNumber),
        trailing: IconButton(
          icon: const Icon(
            Icons.call,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
