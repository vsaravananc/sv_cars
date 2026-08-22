import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/core/routes/routes.dart';
import 'package:seller/feature/home/presentation/widget/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late ScrollController _scrollController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      value: 1,
      duration: 150.ms,
    );
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels < 54) {
          if (_animationController.isDismissed) {
            _animationController.forward();
          }
        } else {
          if (_animationController.isCompleted) {
            _animationController.reverse();
          }
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of cars', style: context.texTheme.displayMedium),
        elevation: 2,
        backgroundColor: context.theme.scaffoldBackgroundColor,
        surfaceTintColor: context.theme.scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: ListView.separated(
          controller: _scrollController,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          shrinkWrap: true,
          hitTestBehavior: HitTestBehavior.translucent,  itemCount: 8,
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
          itemBuilder: (gridContext, index) {
            Widget widget = const CardWidget();
            if (index == 7) {
              widget = Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .spaceBetween,
                children: [
                  widget,
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'CRAFTED BY \n',
                            style: context.texTheme.bodyMedium?.copyWith(
                              height: 1.1
                            ),
                          ),
                          TextSpan(
                            text: 'SARAVANAN',
                            style: context.texTheme.headlineMedium?.copyWith(
                              color: context.theme.primaryColor,
                              height: 1.2
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
            return widget;
          },
        ),
      ),
      floatingActionButtonLocation: .endFloat,
      floatingActionButton: GestureDetector(
        onTap: () => context.push(Routes.addNewCar),
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Container(
              height: 55,
              width: lerpDouble(55, 130, _animationController.value),
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: context.theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: .spaceEvenly,
                children: [
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedAdd01,
                    color: context.theme.colorScheme.onPrimary,
                    strokeWidth: 2,
                  ),
                  ScaleTransition(
                    scale: _animationController,
                    child: SizeTransition(
                      sizeFactor: _animationController,
                      axis: Axis.horizontal,
                      alignment: .center,
                      child: FadeTransition(
                        opacity: _animationController,
                        child: Text(
                          'New Car',
                          style: context.texTheme.headlineMedium?.copyWith(
                            color: context.theme.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
