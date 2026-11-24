## Lab Activity 1: Discussion

I added the images to `assets/images/` and registered the folder in `pubspec.yaml`. In `newsfeed_card.dart`, I added two properties, `hasImage` (bool, default `false`) and `imagePath` (String?), and displayed the picture with `Image.asset()`.

To make it dynamic, I wrapped the image in a condition:

```dart
if (hasImage && imagePath != null) ...[
  Image.asset(imagePath!),
],
```

If `hasImage` is `true`, the image is shown. If it is `false`, nothing is built, so there is no empty container. Boss Toyo's post passes `hasImage: true` and an `imagePath`, while Taylor Swift's post does not, so it shows text only.