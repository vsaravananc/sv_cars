import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/feature/whitelist/presentation/bloc/image_bloc/bloc/image_bloc.dart';
import 'package:seller/feature/whitelist/presentation/widgets/set_of_image_widget.dart';

class AddNewCar extends StatefulWidget {
  const AddNewCar({super.key});

  @override
  State<AddNewCar> createState() => _AddNewCarState();
}

class _AddNewCarState extends State<AddNewCar> {
  @override
  void initState() {
    context.read<ImageBloc>().add(ResetImageEvent());
    super.initState();
  }
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
