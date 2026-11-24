import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';

class CommentInput extends StatelessWidget {
  final String? avatarPath;

  const CommentInput({super.key, this.avatarPath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15.r,
          backgroundColor: Colors.grey.shade200,
          backgroundImage: avatarPath != null ? AssetImage(avatarPath!) : null,
          child: avatarPath == null
              ? Icon(Icons.person, size: 18.sp, color: Colors.black87)
              : null,
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.emoji_emotions_outlined,
                  size: 18.sp,
                  color: Colors.grey,
                ),
                SizedBox(width: 8.w),
                Icon(
                  Icons.camera_alt_outlined,
                  size: 18.sp,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
