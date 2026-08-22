import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_lucide_animated/flutter_lucide_animated.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:seller/core/extension/context_extendsion.dart';

// TODO

///
///  ON THIS SCREEN WE HAVE HARDCORED THE VALUE AND 
///  USED [SETSTATE] WE WANT TO REMOVE IN FUTURE
///


enum FavoriteWidgetState { initial, loading, hearted }

class FavouriteWidget extends StatefulWidget {
  final VoidCallback callback;
  final FavoriteWidgetState? state;
  const FavouriteWidget({
    super.key,
    required this.callback,
    this.state = .initial,
  });

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  final double _size = 24;
  late FavoriteWidgetState state;
  @override
  void initState() {
    state = widget.state!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          state = .loading;
        });
        Future.delayed(500.ms, () {
          if (widget.state == .initial) {
            state = .hearted;
          } else {
            state = .initial;
          }
          setState(() {});
        });
      },
      child: SizedBox(
        height: 28,
        width: 28,
        child: Center(
          child: (state == .initial)
              ? HugeIcon(icon: HugeIcons.strokeRoundedFavourite, size: _size)
              : (state == .loading)
              ? LucideAnimatedIcon(
                  icon: heart,
                  size: _size,
                  color: context.theme.primaryColor,
                  duration: 900.ms,
                  trigger: .loop,
                )
              : Icon(
                      Icons.favorite,
                      size: _size,
                      color: context.theme.primaryColor,
                    )
                    .animate()
                    .fade()
                    .scaleXY(begin: 0.5, end: 1.3, duration: 180.ms)
                    .scaleXY(begin: 1.3, end: 1, duration: 150.ms),
        ),
      ),
    );
  }
}
