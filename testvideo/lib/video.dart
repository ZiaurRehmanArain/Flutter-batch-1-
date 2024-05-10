import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoItem extends StatelessWidget {
  final String videoUrl;

  VideoItem({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
            child: VideoPlayer(_initializeVideoPlayer()),
          ),
          ListTile(
            title: Text('Video Title'),
            subtitle: Text('Video Description'),
          ),
        ],
      ),
    );
  }

  VideoPlayerController _initializeVideoPlayer() {
    VideoPlayerController controller =
        VideoPlayerController.network(videoUrl);
    controller.initialize();
    return controller;
  }
}


class VideoList extends StatelessWidget {
  final List<String> videoUrls = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://example.com/video2.mp4',
    // Add more video URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video List'),
      ),
      body: ListView.builder(
        itemCount: videoUrls.length,
        itemBuilder: (context, index) {
          return VideoItem(videoUrl: videoUrls[index]);
        },
      ),
    );
  }
}
