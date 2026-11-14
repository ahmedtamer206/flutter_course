

import 'package:material_ui/material_ui.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String email;
  final String date;

  const UserCard({
    super.key,
    required this.name,
    required this.email,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(email),
        trailing: Text(date),
      ),
    );
  }
}