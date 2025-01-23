import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
        color: Theme.of(context).colorScheme.onPrimary,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Expanded(child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Theme.of(context).colorScheme.onPrimary,
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ))
              ],
            ))
          ],
        )
      ),
    );
  }
}
