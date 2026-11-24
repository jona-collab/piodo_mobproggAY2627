import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;
  final String? imagePath;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    this.hasImage = true,
    this.imagePath = 'assets/images/post1.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.r),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(Icons.person, color: Colors.black87, size: 25.sp),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5.w),
                          Icon(Icons.public, size: 13.sp, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz, size: 25.sp),
              ],
            ),

            SizedBox(height: 15.h),

            // Post Content
            CustomText(text: postContent, fontSize: 14.sp, color: Colors.black),

            // Actual Post Image
            if (hasImage && imagePath != null) ...[
              SizedBox(height: 10.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  imagePath!,
                  width: double.infinity,
                  height: 250.h,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: double.infinity,
                      height: 250.h,
                      color: Colors.grey.shade200,
                      child: const Center(
                        child: Icon(
                          Icons.broken_image_outlined,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],

            SizedBox(height: 12.h),

            // Like Count
            Row(
              children: [
                Icon(Icons.thumb_up, color: FB_PRIMARY, size: 17.sp),
                SizedBox(width: 6.w),
                CustomText(
                  text: numOfLikes.toString(),
                  fontSize: 13.sp,
                  color: FB_DARK_PRIMARY,
                ),
              ],
            ),

            Divider(height: 20.h),

            // Like, Comment, Share Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up_outlined, color: FB_DARK_PRIMARY),
                  label: const Text(
                    'Like',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.comment_outlined, color: FB_DARK_PRIMARY),
                  label: const Text(
                    'Comment',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined, color: FB_DARK_PRIMARY),
                  label: const Text(
                    'Share',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),

            Divider(height: 15.h),

            // Comment Input
            Row(
              children: [
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(Icons.person, size: 18.sp, color: Colors.black87),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            CustomText(
              text: 'View comments',
              fontSize: 12.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
