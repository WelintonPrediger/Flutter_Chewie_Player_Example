import 'package:chewie/chewie.dart';
import 'package:chewie_player_example/app/modules/video/components/components_export.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:video_player/video_player.dart';

part 'video_store.g.dart';

class VideoStore = VideoStoreBase with _$VideoStore;

abstract class VideoStoreBase with Store {

  @observable
  TargetPlatform? platform;

  @observable
  VideoPlayerController? videoPlayerController;

  @observable
  ChewieController? chewieController;

  @observable
  int? buffer;

  @observable
  List<String> srcs = [
    "https://media.w3.org/2010/05/sintel/trailer.mp4",
    "https://assets.mixkit.co/videos/preview/mixkit-spinning-around-the-earth-29351-large.mp4",
    "https://assets.mixkit.co/videos/preview/mixkit-daytime-city-traffic-aerial-view-56-large.mp4",
    "https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4"
  ];

  @observable
  int currPlayIndex = 0;

  @observable
  bool _isLoading = false;

  @computed
  bool get isLoading => _isLoading;

  @action
  Future<void> initializePlayer() async {
    videoPlayerController = VideoPlayerController.network(srcs[currPlayIndex]);
    await videoPlayerController?.initialize();
    createChewieController();
  }

  @action
  void createChewieController() {
    if(videoPlayerController != null) {
      _isLoading = true;
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: true,
        looping: true,
        useRootNavigator: false,
        hideControlsTimer: const Duration(seconds: 3),
        additionalOptions: (context) => [
          OptionItem(onTap: () {}, iconData: Icons.closed_caption_outlined, title: 'Legendas'),
          OptionItem(onTap: () => complaint(context: context), iconData: Icons.flag_outlined, title: 'Denunciar'),
        ]
      );
      _isLoading = false;
    }
  }

  @action
  Future<void> toggleVideo() async {
    await videoPlayerController?.pause();
    currPlayIndex += 1;
    if (currPlayIndex >= srcs.length) {
      currPlayIndex = 0;
    }
    await initializePlayer();
  }

  @action
  Future<void> changeVideo({required int index}) async {
    await videoPlayerController?.pause();
    currPlayIndex = index;
    await initializePlayer();
  }

  @action
  void restartVideo() {
    videoPlayerController?.pause();
    videoPlayerController?.seekTo(Duration.zero);
    createChewieController();
  }

  @action
  Future<void> complaint({required BuildContext context}) async {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0))
      ),
      builder: (context) => const ModalComplaint());
  }
}