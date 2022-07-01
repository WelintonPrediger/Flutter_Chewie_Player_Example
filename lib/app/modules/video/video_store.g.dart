// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VideoStore on VideoStoreBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: 'VideoStoreBase.isLoading'))
          .value;

  late final _$platformAtom =
      Atom(name: 'VideoStoreBase.platform', context: context);

  @override
  TargetPlatform? get platform {
    _$platformAtom.reportRead();
    return super.platform;
  }

  @override
  set platform(TargetPlatform? value) {
    _$platformAtom.reportWrite(value, super.platform, () {
      super.platform = value;
    });
  }

  late final _$videoPlayerControllerAtom =
      Atom(name: 'VideoStoreBase.videoPlayerController', context: context);

  @override
  VideoPlayerController? get videoPlayerController {
    _$videoPlayerControllerAtom.reportRead();
    return super.videoPlayerController;
  }

  @override
  set videoPlayerController(VideoPlayerController? value) {
    _$videoPlayerControllerAtom.reportWrite(value, super.videoPlayerController,
        () {
      super.videoPlayerController = value;
    });
  }

  late final _$chewieControllerAtom =
      Atom(name: 'VideoStoreBase.chewieController', context: context);

  @override
  ChewieController? get chewieController {
    _$chewieControllerAtom.reportRead();
    return super.chewieController;
  }

  @override
  set chewieController(ChewieController? value) {
    _$chewieControllerAtom.reportWrite(value, super.chewieController, () {
      super.chewieController = value;
    });
  }

  late final _$bufferAtom =
      Atom(name: 'VideoStoreBase.buffer', context: context);

  @override
  int? get buffer {
    _$bufferAtom.reportRead();
    return super.buffer;
  }

  @override
  set buffer(int? value) {
    _$bufferAtom.reportWrite(value, super.buffer, () {
      super.buffer = value;
    });
  }

  late final _$srcsAtom = Atom(name: 'VideoStoreBase.srcs', context: context);

  @override
  List<String> get srcs {
    _$srcsAtom.reportRead();
    return super.srcs;
  }

  @override
  set srcs(List<String> value) {
    _$srcsAtom.reportWrite(value, super.srcs, () {
      super.srcs = value;
    });
  }

  late final _$currPlayIndexAtom =
      Atom(name: 'VideoStoreBase.currPlayIndex', context: context);

  @override
  int get currPlayIndex {
    _$currPlayIndexAtom.reportRead();
    return super.currPlayIndex;
  }

  @override
  set currPlayIndex(int value) {
    _$currPlayIndexAtom.reportWrite(value, super.currPlayIndex, () {
      super.currPlayIndex = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: 'VideoStoreBase._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$initializePlayerAsyncAction =
      AsyncAction('VideoStoreBase.initializePlayer', context: context);

  @override
  Future<void> initializePlayer() {
    return _$initializePlayerAsyncAction.run(() => super.initializePlayer());
  }

  late final _$toggleVideoAsyncAction =
      AsyncAction('VideoStoreBase.toggleVideo', context: context);

  @override
  Future<void> toggleVideo() {
    return _$toggleVideoAsyncAction.run(() => super.toggleVideo());
  }

  late final _$changeVideoAsyncAction =
      AsyncAction('VideoStoreBase.changeVideo', context: context);

  @override
  Future<void> changeVideo({required int index}) {
    return _$changeVideoAsyncAction.run(() => super.changeVideo(index: index));
  }

  late final _$complaintAsyncAction =
      AsyncAction('VideoStoreBase.complaint', context: context);

  @override
  Future<void> complaint({required BuildContext context}) {
    return _$complaintAsyncAction.run(() => super.complaint(context: context));
  }

  late final _$VideoStoreBaseActionController =
      ActionController(name: 'VideoStoreBase', context: context);

  @override
  void createChewieController() {
    final _$actionInfo = _$VideoStoreBaseActionController.startAction(
        name: 'VideoStoreBase.createChewieController');
    try {
      return super.createChewieController();
    } finally {
      _$VideoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restartVideo() {
    final _$actionInfo = _$VideoStoreBaseActionController.startAction(
        name: 'VideoStoreBase.restartVideo');
    try {
      return super.restartVideo();
    } finally {
      _$VideoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
platform: ${platform},
videoPlayerController: ${videoPlayerController},
chewieController: ${chewieController},
buffer: ${buffer},
srcs: ${srcs},
currPlayIndex: ${currPlayIndex},
isLoading: ${isLoading}
    ''';
  }
}
