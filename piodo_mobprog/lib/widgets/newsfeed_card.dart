import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';
import 'post_action_button.dart';
import 'comment_input.dart';
import 'reactions_row.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;
  final String? imagePath;
  final String? profileImagePath;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    this.hasImage = false,
    this.imagePath = 'assets/images/post1.jpeg', // .jpeg to match your file
    this.profileImagePath,
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
                  backgroundImage: profileImagePath != null
                      ? AssetImage(profileImagePath!)
                      : null,
                  child: profileImagePath == null
                      ? Icon(Icons.person, color: Colors.black87, size: 25.sp)
                      : null,
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

            // Actual Post Image (only shown when hasImage is true)
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

            ReactionsRow(count: numOfLikes),

            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PostActionButton(
                  icon: Icons.thumb_up,
                  label: 'Like',
                  onPressed: () => debugPrint('Liked'),
                ),
                const PostActionButton(icon: Icons.comment, label: 'Comment'),
                const PostActionButton(icon: Icons.redo, label: 'Share'),
              ],
            ),

            SizedBox(height: 5.h),

            const CommentInput(avatarPath: 'assets/images/dp.jpg'),

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
