import 'package:agenda_de_contatos/model/contacts_db.dart';
import 'package:agenda_de_contatos/screens/home/components/list_item.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/new");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (context, index) => ListItem(
            contact: contacts[index],
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: contacts.length,
        ),
      ),
    );
  }
}
