import 'package:flutter/material.dart';
import '../calculator.dart';
import '../../pages/second_route.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        TextButton(
          style: style,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Calculator()),
            );
          },
          child: const Text('Calculator'),
        ),
        TextButton(
          style: style,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Converter()),
            );
          },
          child: const Text('Exchange'),
        ),
      ],
    );
  }
}
