import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/core/util/assets.dart';
import 'package:seller/widgets/favourite_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: .hardEdge,
      elevation: 0.1,
      margin: EdgeInsets.zero,
      borderOnForeground: false,
      child: Column(
        spacing: 1,
        children: [
          Stack(
            clipBehavior: .none,
            children: [
              const SizedBox(
                height: 150,
                child: _CardImageHolder()),
              Positioned(
                right: 0,
                bottom: -22,
                left: 0,
                child: CustomPaint(
                  size: const Size(.infinity, 150),
                  painter: RPSCustomPainter(),
                ),
              ),
              Positioned(
                right: 15,
                top: 15,
                child: FavouriteWidget(callback: () {}),
              ),
              Positioned(
                right: 0,
                bottom: -8,
                left: 0,

                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      useSafeArea: true,
                      backgroundColor: Colors.transparent,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                      ),
                      isScrollControlled: true,
                      builder: (context) {
                        return Column(
                          mainAxisAlignment: .center,
                          spacing: 8,
                          children: [
                            GestureDetector(
                              onTap: () => context.pop(),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: .circle,
                                  color: context.theme.cardColor.withValues(
                                    alpha: 0.5,
                                  ),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const HugeIcon(
                                  icon: HugeIcons.strokeRoundedCancel01,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      55,
                                    ),
                                  ),
                                  color: context.theme.scaffoldBackgroundColor,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Align(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 1.2,
                      ),
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.inversePrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "SV Cars",
                        style: context.texTheme.labelMedium?.copyWith(
                          fontWeight: .w600,
                          color: context.theme.colorScheme.onInverseSurface,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 116,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        '2021 Maruti Swift',
                        style: context.texTheme.bodyLarge?.copyWith(
                          height: 1.3,
                          fontWeight: .w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '\$49.4 lakh',
                        style: context.texTheme.bodyLarge?.copyWith(
                          height: 1.3,
                          fontWeight: .w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        'VXI',
                        style: context.texTheme.bodyMedium?.copyWith(
                          height: 1.3,
                          color: context.theme.hintColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '7% off ',
                              style: context.texTheme.labelSmall?.copyWith(
                                height: 1.3,
                                color: context.theme.colorScheme.primary,
                              ),
                            ),
                            TextSpan(
                              text: r'$6.37 lakh',
                              style: context.texTheme.labelSmall?.copyWith(
                                height: 1.3,
                                decoration: .lineThrough,
                                decorationStyle: .solid,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          spacing: 4,
                          runSpacing: 2.5,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 1.2,
                              ),
                              decoration: BoxDecoration(
                                color: context.theme.colorScheme.inversePrimary,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "60,180 KM",
                                style: context.texTheme.labelMedium?.copyWith(
                                  fontWeight: .w600,
                                  color: context
                                      .theme
                                      .colorScheme
                                      .onInverseSurface,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 1.2,
                              ),
                              decoration: BoxDecoration(
                                color: context.theme.colorScheme.inversePrimary,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "Petrol",
                                style: context.texTheme.labelMedium?.copyWith(
                                  fontWeight: .w600,
                                  color: context
                                      .theme
                                      .colorScheme
                                      .onInverseSurface,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 1.2,
                              ),
                              decoration: BoxDecoration(
                                color: context.theme.colorScheme.inversePrimary,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "Manual",
                                style: context.texTheme.labelMedium?.copyWith(
                                  fontWeight: .w600,
                                  color: context
                                      .theme
                                      .colorScheme
                                      .onInverseSurface,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 1.2,
                              ),
                              decoration: BoxDecoration(
                                color: context.theme.colorScheme.inversePrimary,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "TN07",
                                style: context.texTheme.labelMedium?.copyWith(
                                  fontWeight: .w600,
                                  color: context
                                      .theme
                                      .colorScheme
                                      .onInverseSurface,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Chennai',
                        style: context.texTheme.labelSmall?.copyWith(
                          height: 1.3,
                          color: context.theme.hintColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const _CardButtonRow(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardButtonRow extends StatelessWidget {
  const _CardButtonRow();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 0.5),
        Row(
          crossAxisAlignment: .center,
          children: [
            Expanded(
              child: Text(
                "Free Test Drive",
                style: context.texTheme.bodyLarge?.copyWith(
                  fontWeight: .w600,
                ),
                textAlign: .center,
              ),
            ),
            SizedBox(height: 35, child: VerticalDivider()),
            Expanded(
              child: Text(
                "View Details",
                style: context.texTheme.bodyLarge?.copyWith(
                  fontWeight: .w600,
                ),
                textAlign: .center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CardImageHolder extends StatelessWidget {
  const _CardImageHolder();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: .infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey.shade200, context.theme.cardColor],
          begin: .topCenter,
          end: .bottomCenter,
        )
      ),
      child: Image.asset(AppAssets.dummy, fit: .contain),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.6600000);
    path_0.quadraticBezierTo(
      size.width * 0.2950000,
      size.height * 0.8480000,
      size.width * 0.5000000,
      size.height * 0.8466667,
    );
    path_0.quadraticBezierTo(
      size.width * 0.7290000,
      size.height * 0.8443333,
      size.width,
      size.height * 0.6666667,
    );

    Paint paintStroke0 = Paint()
      ..color = const Color(0xFFDDDDDD)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.003
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.bevel;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
