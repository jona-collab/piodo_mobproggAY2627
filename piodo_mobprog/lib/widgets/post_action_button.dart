import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class PostActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed ?? () {},
      icon: Icon(icon, color: FB_DARK_PRIMARY),
      label: CustomText(text: label, fontSize: 12.sp, color: FB_DARK_PRIMARY),
    );
  }
}
