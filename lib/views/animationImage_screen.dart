import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class AnimationImageScreen extends StatefulWidget {
  const AnimationImageScreen({super.key});

  @override
  State<AnimationImageScreen> createState() => _AnimationImageScreenState();
}

class _AnimationImageScreenState extends State<AnimationImageScreen> {
  List<ImageProvider> imageList = <ImageProvider>[];
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = Duration(milliseconds: 50);
  bool imagePrecached = false;

  @override
  void initState() {
    //* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Image 360 degree animation"),
        backgroundColor: const Color(0xFF931880),
      ),
      body: (imagePrecached == true)
      ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageView360(
            key: UniqueKey(),
            imageList: imageList,
            rotationCount: rotationCount,
            rotationDirection: RotationDirection.anticlockwise,
            frameChangeDuration: Duration(milliseconds: 30),
            swipeSensitivity: swipeSensitivity,
            allowSwipeToRotate: allowSwipeToRotate,
            onImageIndexChanged: (currentImageIndex) {
              print("currentImageIndex: $currentImageIndex");
            },
          ),
        ],
      )
      : Center(child: Text("Pre-Caching images...")),
    );
  }

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 9; i++) {
      imageList.add(AssetImage('assets/$i.png'));
      await precacheImage(AssetImage('assets/$i.png'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }
}
