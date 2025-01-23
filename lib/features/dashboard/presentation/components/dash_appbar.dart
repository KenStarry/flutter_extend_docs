import 'package:flutter/material.dart';

class DashAppbar extends StatefulWidget {
  const DashAppbar({super.key});

  @override
  State<DashAppbar> createState() => _DashAppbarState();
}

class _DashAppbarState extends State<DashAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Theme.of(context).colorScheme.onPrimary,
      child: Row(
        spacing: 24,
        children: [
          Transform.scale(
            scale: 1.4,
            child: Image.asset("assets/images/logo.png",
                width: 50, height: 50, fit: BoxFit.cover),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "Flutter",
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.titleLarge!.fontWeight,
                    color: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .color!)),
            TextSpan(
                text: " Extend",
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.titleLarge!.fontWeight,
                    color: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .color!
                        .withValues(alpha: 0.4))),
          ]))
        ],
      ),
    );
  }
}
