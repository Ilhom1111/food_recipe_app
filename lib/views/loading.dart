import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xff70b9be).withOpacity(.2),
      ),
      child: Center(
        child: LoadingAnimationWidget.threeRotatingDots(
          color: const Color(0xff70b9be),
          size: 50.w,
        ),
      ),
    );
  }
}
