import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")) 
    ..initialize().then((_){
      _videoPlayerController.play();
      _videoPlayerController.setLooping(true);
      setState(() {
        
      });

    });
  }
  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          child: VideoPlayer(_videoPlayerController),
          width: _videoPlayerController.value.size?.width ?? 0,
          height: _videoPlayerController.value.size?.height ?? 0,

          ),
        // CachedNetworkImage(
        //   imageUrl:
        //       "https://i.pinimg.com/originals/e0/34/06/e03406f94eb137b4cceb62c99d171ad1.png",
        //   fit: BoxFit.cover,
        //   height: double.infinity,
        //   width: double.infinity,
        // ),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
        Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          "https://t4.ftcdn.net/jpg/02/78/54/29/360_F_278542923_rKZvE6M5pkL457HrQPxKi9JBuvzDIDnz.jpg",
                      height: 100,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Divider(
                      color: Color.fromRGBO(
                          255, 255, 255, 0.25), // Set the color with alpha
                      thickness: 1.0, // You can set the thickness of the line
                      height: 1.0, // You can set the height of the line
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    SizedBox(
                      child: Text("Experience Love at First Bite",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.8,
                          )),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Order online",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.4,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xFFCC21B2),
                          radius: 5,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Pickup from nearest store",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.4,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF931880)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            alignment: Alignment.center,
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            )),
                        onPressed: () {},
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.17,
                          ),
                        ),
                      ),
                    ),
                  ]),
            )),
      ],
    ));
  }
}
