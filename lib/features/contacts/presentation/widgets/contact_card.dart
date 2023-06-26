import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactDesign extends StatelessWidget {
  String name, phoneNumber;
  ContactDesign(this.name, this.phoneNumber);

  @override
  Widget build(BuildContext context) {
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
        ),
      ),
    );
  }
}
