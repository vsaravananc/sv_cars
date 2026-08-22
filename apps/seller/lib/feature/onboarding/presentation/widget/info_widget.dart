import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:seller/core/extension/context_extendsion.dart';

class InfoEntities {
  final List<List<dynamic>> icon;
  final String title;
  final String text;

  const InfoEntities({
    required this.icon,
    required this.title,
    required this.text,
  });
}

class InfoWidget extends StatelessWidget {
  final InfoEntities info;
  const InfoWidget({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const .all(12),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        color: context.theme.cardColor.withValues(alpha: 0.8),
        shadows: [
          BoxShadow(
            blurRadius: 8,
            spreadRadius: 1,
            color: context.theme.shadowColor.withValues(alpha: .1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            padding: const .all(8),
            decoration: BoxDecoration(
              color: context.theme.colorScheme.surfaceDim,
              shape: .circle,
            ),
            child: HugeIcon(icon: info.icon, size: 20),
          ),
          Text(
            info.title,
            style: context.texTheme.bodyLarge?.copyWith(fontWeight: .w600),
          ),
          Text(
            info.text,
            style: context.texTheme.bodyMedium?.copyWith(
              height: 1.3,
              color: context.theme.hintColor,
            ),
            maxLines: 3,
            overflow: .ellipsis,
          ),
        ],
      ),
    );
  }
}
