import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EmployeeTile extends StatelessWidget {
  final employee;

  EmployeeTile(this.employee);

  @override
  Widget build(BuildContext context) {
       return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: CachedNetworkImage(
            imageUrl: (employee.profileImage),
            fit: BoxFit.cover,
          ),
        ),
        title: Text(employee.name),
        subtitle: Text(employee.email),
      ),
    );

  }
}
