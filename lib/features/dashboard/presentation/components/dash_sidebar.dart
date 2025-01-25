import 'package:flutter/material.dart';

class DashSidebar extends StatefulWidget {
  const DashSidebar({super.key});

  @override
  State<DashSidebar> createState() => _DashSidebarState();
}

class _DashSidebarState extends State<DashSidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).colorScheme.onPrimary,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          //  sidebar elements
        ],
      ),
    );
  }
}
