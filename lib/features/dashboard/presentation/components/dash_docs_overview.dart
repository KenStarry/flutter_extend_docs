import 'package:flutter/material.dart';
import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_extend_docs/features/dashboard/presentation/model/doc_card_model.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../theme/colors.dart';

class DashDocsOverview extends StatefulWidget {
  const DashDocsOverview({super.key});

  @override
  State<DashDocsOverview> createState() => _DashDocsOverviewState();
}

class _DashDocsOverviewState extends State<DashDocsOverview> {
  late final List<DocCardModel> _categories;

  @override
  void initState() {
    super.initState();

    _categories = [
      DocCardModel(
          title: "Futures",
          asset: "assets/images/future.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Generators",
          asset: "assets/images/generators.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Images",
          asset: "assets/images/image.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Lists",
          asset: "assets/images/list.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Number",
          asset: "assets/images/number.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "BuildContext",
          asset: "assets/images/context.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Date, Time",
          asset: "assets/images/calendar.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Files",
          asset: "assets/images/file.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "String",
          asset: "assets/images/text.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Animations",
          asset: "assets/images/animation.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Colors",
          asset: "assets/images/paint.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
      DocCardModel(
          title: "Widgets",
          asset: "assets/images/widget.svg",
          subTitle: "5 Extensions",
          extensionCount: 10),
    ].sortByAndReturnSorted((doc) => doc.title, ascending: true);
  }

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
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
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
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight:
                              Theme.of(context).textTheme.bodySmall!.fontWeight,
                          color: textBlack700)),
                  TextSpan(
                      text: "12",
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .fontWeight,
                          color: textBlack900)),
                ]))
              ],
            )),

            SliverToBoxAdapter(child: SizedBox(height: 24)),

            //  grid
            SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final doc = _categories[index];
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      children: [
                        //  image
                        Positioned(
                          right: 0,
                          top: 100,
                          child: SvgPicture.asset(doc.asset,
                              width: 100,
                              height: 100,
                              colorFilter: ColorFilter.mode(
                                  textBlack100.withValues(alpha: 0.1),
                                  BlendMode.srcIn)),
                        ),

                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //  image
                                Container(
                                  width: 70,
                                  height: 70,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor
                                          .withValues(alpha: 0.6)),
                                  child: SvgPicture.asset(doc.asset,
                                      width: double.infinity,
                                      height: double.infinity,
                                      colorFilter: ColorFilter.mode(
                                          textBlack900, BlendMode.srcIn)),
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 12,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/more_vert.svg",
                                        width: 24,
                                        height: 24,
                                        colorFilter: ColorFilter.mode(
                                            textBlack500, BlendMode.srcIn)),
                                    Text(
                                      doc.extensionCount.toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .fontWeight,
                                          color: textBlack900),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Expanded(
                                child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                spacing: 12,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doc.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .fontWeight,
                                        color: textBlack900),
                                  ),
                                  Text(
                                    doc.subTitle,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .fontWeight,
                                        color: textBlack500),
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ],
                    ),
                  );
                }, childCount: _categories.length),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisExtent: 220,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24))
          ],
        ),
      ),
    );
  }
}
