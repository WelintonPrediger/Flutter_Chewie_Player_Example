import 'package:flutter_modular/flutter_modular.dart';

import 'export_video_files.dart';
 
class VideoModule extends Module {
  @override
  final List<Bind> binds = [
 Bind.lazySingleton((i) => VideoStore()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => const VideoPage()),
 ];
}