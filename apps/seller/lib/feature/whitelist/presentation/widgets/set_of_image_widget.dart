import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/feature/whitelist/presentation/bloc/image_bloc/bloc/image_bloc.dart';

class SetOfImageWidget extends StatelessWidget {
  const SetOfImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImageBloc, ImageState>(
      listener: (context, state) {
        debugPrint('$state');
      },
      buildWhen: (previous, current) =>
          current is ImagePickeFailed ||
          current is ImagePicked ||
          current is ImageInitial,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Select Image of a car',
                        style: context.texTheme.bodyLarge?.copyWith(
                          fontWeight: .w600,
                        ),
                      ),
                      Text(
                        '(NOTE : MAX SIZE OF A IMAGE IS 2MB)',
                        style: context.texTheme.labelSmall?.copyWith(
                          fontSize: 8,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const .symmetric(vertical: 1.5, horizontal: 8),
                    decoration: BoxDecoration(
                      color: context.theme.hintColor.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${state is ImagePicked ? state.pickedImageList.length : 0}/5 Photos',
                      style: context.texTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () =>
                    context.read<ImageBloc>().add(PickMultiImageEvent()),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: DashedBorder.fromBorderSide(
                      dashLength: 8,
                      side: BorderSide(
                        color: context.theme.dividerColor,
                        width: 1.3,
                      ),
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
      },
    );
  }
}
