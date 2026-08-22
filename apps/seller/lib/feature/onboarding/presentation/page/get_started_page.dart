import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/core/routes/routes.dart';
import 'package:seller/feature/onboarding/presentation/widget/info_widget.dart';

class GetStartedPage extends StatelessWidget {
  const new({super.key});

  static List<InfoEntities> get _infoList {
    return [
      InfoEntities(
        icon: HugeIcons.strokeRoundedZap,
        title: "Sell Your Car Instantly",
        text: "Streamlined digital process ensures a rapid valuation and immediate transaction closure.",
      ),
      InfoEntities(
        icon: HugeIcons.strokeRoundedBadgeIndianRupee,
        title: "Best Price Guaranteed",
        text: "Our algorithmic pricing model guarantees you receive the absolute highest market value.",
      ),
      InfoEntities(
        icon: HugeIcons.strokeRoundedMapPinHouse,
        title: "Free Doorstep Inspection",
        text: "Certified engineers come to your location for a comprehensive, zero cost vehicle evaluation.",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Placeholder(
              strokeWidth: 0.8,
              color: context.theme.colorScheme.error,
              child: SizedBox(
                height: 450,
                width: .infinity,
                child: Center(child: Text("Place holder for Image")),
              ),
            ),
          ).animate(delay: 200.ms).moveY(begin: -9, end: 0),
          Expanded(
            flex: 4,
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: .topLeft,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 270),
                        child: Text(
                          "Experience Precision. Sell with Confidence.",
                          style: context.texTheme.headlineSmall?.copyWith(
                            fontWeight: .w500,
                            height: 1.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 190,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: .horizontal,
                      padding: const .fromLTRB(16, 10, 16, 10),
                      reverse: false,
                      itemBuilder: (context, index) =>
                          InfoWidget(info: _infoList[index]),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemCount: _infoList.length,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: .infinity,
                      child: ElevatedButton.icon(
                        iconAlignment: .end,
                        onPressed: () {
                          context.go(Routes.home);
                        },
                        label: Text('Get Started'),
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowRight02,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ).animate(delay: 200.ms).moveY(begin: 9, end: 0),
        ],
      ).animate().fadeIn().blurXY(begin: 1.5, end: 0),
    );
  }
}
