import 'package:agenda_de_contatos/model/contact.dart';
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final Contact contact;
  const ListItem({
    super.key,
    required this.contact,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: (widget.contact.isFavorite)
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_outline),
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () {
                setState(() {
                  widget.contact.isFavorite = !widget.contact.isFavorite;
                });
              },
              tooltip: "Favoritar o contato",
            ),
            const SizedBox(
              width: 24,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(widget.contact.photoPath),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.contact.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  widget.contact.phone,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
