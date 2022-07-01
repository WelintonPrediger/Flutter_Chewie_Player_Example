import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'export_video_files.dart';

class VideoPage extends StatefulWidget {

  final String title;

  const VideoPage({Key? key, this.title = 'Chewie Demo Player'}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VideoPageState();

}

class _VideoPageState extends State<VideoPage> {

  final videoStore = Modular.get<VideoStore>();

  @override
  void initState() {
    super.initState();
    initializer();
  }

  @override
  void dispose() {
    videoStore.videoPlayerController?.dispose();
    videoStore.chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: widget.title,
      home: Observer(builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.6,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: videoStore.chewieController == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(height: 20),
                          Text('Loading'),
                        ],
                      )
                    : Chewie(controller: videoStore.chewieController!),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Text('Lista de Vídeos', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: videoStore.srcs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () => videoStore.changeVideo(index: index),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      leading: Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.ondemand_video_rounded,
                            size: 40,
                            color: Colors.white
                          ),
                        ),
                      ),
                      title: Text('Vídeo: ${index + 1}'),
                      subtitle: const Text('Uma breve descrição para o vídeo'),
                    );
                  }
              ),
            )
          ],
        ),
      ))
    );
  }

  Future<void> initializer() async {
    await videoStore.initializePlayer();
  }

}