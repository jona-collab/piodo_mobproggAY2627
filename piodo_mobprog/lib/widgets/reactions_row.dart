import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class ReactionsRow extends StatelessWidget {
  final int count;

  const ReactionsRow({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    final double size = 20.r;
    final double overlap = 13.w;

    return Row(
      children: [
        SizedBox(
          width: size + overlap * 2,
          height: size,
          child: Stack(
            children: [
              _reaction(Icons.emoji_emotions, Colors.amber, overlap * 2, size),
              _reaction(Icons.favorite, Colors.red, overlap, size),
              _reaction(Icons.thumb_up, FB_PRIMARY, 0, size),
            ],
          ),
        ),
        SizedBox(width: 6.w),
        CustomText(
          text: count.toString(),
          fontSize: 13.sp,
          color: FB_DARK_PRIMARY,
        ),
      ],
    );
  }

  Widget _reaction(IconData icon, Color color, double left, double size) {
    return Positioned(
      left: left,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1.5),
        ),
        child: Icon(icon, size: 12.sp, color: Colors.white),
      ),
    );
  }
}
