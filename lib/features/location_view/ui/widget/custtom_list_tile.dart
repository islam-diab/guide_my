import 'package:flutter/material.dart';

class CusttomListTile extends StatelessWidget {
  final String title, subtitle;
  final VoidCallback? onTap;
  const CusttomListTile({super.key,required this.title,required this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
