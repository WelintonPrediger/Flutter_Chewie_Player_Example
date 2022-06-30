import 'package:flutter_modular/flutter_modular.dart';

import 'modules/video/export_video_files.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: VideoModule()),
  ];

}