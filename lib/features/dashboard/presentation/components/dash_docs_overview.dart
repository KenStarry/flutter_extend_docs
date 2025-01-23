import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

class DashDocsOverview extends StatefulWidget {
  const DashDocsOverview({super.key});

  @override
  State<DashDocsOverview> createState() => _DashDocsOverviewState();
}

class _DashDocsOverviewState extends State<DashDocsOverview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          //  title
          SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 12,
                children: [
                  Text("Docs",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight:
                              Theme.of(context).textTheme.titleLarge!.fontWeight,
                          color: textBlack900)),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Extensions: ",
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                            fontWeight:
                            Theme.of(context).textTheme.bodySmall!.fontWeight,
                            color: textBlack700)),
                    TextSpan(
                        text: "12",
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                            fontWeight:
                            Theme.of(context).textTheme.titleLarge!.fontWeight,
                            color: textBlack900)),
                  ]))
                ],
              ))
        ],
      ),
    );
  }
}
