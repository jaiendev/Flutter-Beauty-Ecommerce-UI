// Flutter imports:
import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';

// Project imports:
import 'package:lotus_application/core/app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class SwitchButton extends StatefulWidget {
  final TextStyle? style;
  final bool value;
  final String? text;
  final Function(bool)? onToggle;
  final AnimationController? controller;
  const SwitchButton({
    super.key,
    this.style,
    required this.value,
    required this.text,
    this.onToggle,
    this.controller,
  });

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offset;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      controller = widget.controller!;
    } else {
      controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: durationDefaultAnimation),
      );
    }

    offset = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(controller);

    if (widget.value) {
      controller.forward();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (widget.onToggle != null) {
          // DeviceHelper().lightImpact();
          if (widget.value) {
            controller.reverse();
          } else {
            controller.forward();
          }
          widget.onToggle!(!widget.value);
        }
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.value ? colorPrimary2 : colorGrey,
              borderRadius: BorderRadius.circular(40.sp),
            ),
            padding: EdgeInsets.symmetric(horizontal: 2.sp),
            height: 17.sp,
            width: 31.2.sp,
            alignment: Alignment.centerRight,
            child: SlideTransition(
              position: offset,
              child: Container(
                height: 13.5.sp,
                width: 13.5.sp,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Visibility(
            visible: widget.text != null,
            child: Row(
              children: [
                SizedBox(width: 6.sp),
                Text(
                  widget.text ?? '',
                  style: widget.style ??
                      TextStyle(
                        fontSize: 12.5.sp,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
