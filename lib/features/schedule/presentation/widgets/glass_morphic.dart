import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:sizer/sizer.dart';

class Glassmorphic extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final BoxConstraints? constraints;
  final double? border;
  const Glassmorphic({
    super.key,
    this.height,
    this.width,
    this.child,
    this.constraints,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: width ?? double.infinity,
      height: height ?? 21.h,
      borderRadius: 0,
      blur: 3,
      alignment: Alignment.bottomCenter,
      border: border ?? 0,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.1),
          const Color(0xFFFFFFFF).withOpacity(0.05),
        ],
        stops: const [
          0.4,
          1,
        ],
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.5),
          const Color(0xFFFFFFFF).withOpacity(0.5),
        ],
      ),
      constraints: constraints,
      child: const SizedBox(),
    );
  }
}
