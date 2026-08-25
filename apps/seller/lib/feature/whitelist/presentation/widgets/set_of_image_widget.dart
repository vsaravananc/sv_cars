import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/core/util/dp_inject.dart';
import 'package:seller/service/image_picker_service.dart';

class SetOfImageWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'Select Image of a car',
            style: context.texTheme.bodyLarge?.copyWith(fontWeight: .w600),
          ),
          Text(
            '(NOTE : MAX SIZE OF A IMAGE IS 2MB)',
            style: context.texTheme.labelSmall?.copyWith(
              fontSize: 8,
              height: 1,
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () async => getIt<ImagePickerIF>().selectMultipleImage() ,
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                border: DashedBorder.fromBorderSide(
                  dashLength: 8,
                  side: BorderSide(color: context.theme.dividerColor, width: 1.3),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: .center,
                  spacing: 8,
                  children: [
                    HugeIcon(icon: HugeIcons.strokeRoundedImage01),
                    Text('Select a Image upto 5'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
