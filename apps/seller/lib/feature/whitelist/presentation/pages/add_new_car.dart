import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/feature/whitelist/presentation/widgets/set_of_image_widget.dart';

class AddNewCar extends StatelessWidget {
  const AddNewCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whitelist Car'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const HugeIcon(icon: HugeIcons.strokeRoundedArrowLeft01),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: LinearProgressIndicator(
              value: 0.1,
              color: context.theme.primaryColor,
              borderRadius: .circular(4),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(spacing: 8, children: [SetOfImageWidget()]),
      ),
    );
  }
}
