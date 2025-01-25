import 'package:flutter/material.dart';
import 'package:flutter_extend_docs/features/dashboard/presentation/model/sidebar_item_model.dart';
import 'package:flutter_extend_docs/theme/colors.dart';
import 'package:flutter_svg/svg.dart';

class DashSidebar extends StatefulWidget {
  const DashSidebar({super.key});

  @override
  State<DashSidebar> createState() => _DashSidebarState();
}

class _DashSidebarState extends State<DashSidebar> {
  late final List<SidebarItemModel> sidebarItems;

  @override
  void initState() {
    super.initState();

    sidebarItems = [
      SidebarItemModel(title: "Dashboard", icon: "assets/images/future.svg"),
      SidebarItemModel(title: "Futures", icon: "assets/images/future.svg"),
      SidebarItemModel(title: "Images", icon: "assets/images/future.svg"),
      SidebarItemModel(title: "Generators", icon: "assets/images/future.svg"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 50, right: 24),
      color: Theme.of(context).colorScheme.onPrimary,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          //  sidebar elements
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            final item = sidebarItems[index];
            return Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(bottom: 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 12,
                children: [
                  SvgPicture.asset(item.icon,
                      width: 30,
                      height: 30,
                      colorFilter:
                          ColorFilter.mode(textBlack700, BlendMode.srcIn)),
                  Text(item.title,
                      style: TextStyle(
                        fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                        fontWeight: Theme.of(context).textTheme.titleLarge!.fontWeight,
                        color: Theme.of(context).textTheme.bodyMedium!.color
                      ))
                ],
              ),
            );
          }, childCount: sidebarItems.length))
        ],
      ),
    );
  }
}
