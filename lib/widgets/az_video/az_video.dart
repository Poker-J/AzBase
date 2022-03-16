import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';


/// 播放器组件
class AzVideoPage extends StatefulWidget {
  const AzVideoPage({Key key,this.url}) : super(key: key);

  @override
  _AzVideoPageState createState() => _AzVideoPageState();

  final  String url;
}

class _AzVideoPageState extends State<AzVideoPage> {

  BetterPlayerController betterPlayerController; //播放控制器
  BetterPlayerDataSource betterPlayerDataSource; //资源控制器
  bool loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initVideoController();
  }

  //初始化控制器
  void initVideoController() {
    betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.url,
        liveStream: false
    );

    BetterPlayerConfiguration betterPlayerConfiguration =
    BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
      autoPlay: true,
      looping: false,
      placeholderOnTop: true,
      //占位组件显示在顶层
      showPlaceholderUntilPlay: true,
      autoDispose: true,
      //占位组件播放之前一直显示
      translations: [
        BetterPlayerTranslations(
          languageCode: "zh",
          generalDefaultError: "无法播放视频",
          generalNone: "没有",
          generalDefault: "默认",
          generalRetry: '重试',
          playlistLoadingNextVideo: "正在加载下一个视频",
          controlsLive: "直播",
          controlsNextVideoIn: "下一部影片",
          overflowMenuPlaybackSpeed: "播放速度",
          overflowMenuSubtitles: "字幕",
          overflowMenuQuality: "质量",
          overflowMenuAudioTracks: "音讯",
          qualityAuto: "自动",
        )
      ],
      //设置封面图
      placeholder: Container(),
      controlsConfiguration: BetterPlayerControlsConfiguration(
        //是否显示控制图标
        showControls: true,
        enableOverflowMenu: false,
        enableFullscreen:true,
      ),
    );
    betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    betterPlayerController.setupDataSource(betterPlayerDataSource);
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body:loading ? SizedBox() : Center(
        child: AspectRatio(
          aspectRatio:
          betterPlayerController.getAspectRatio(),
          child: BetterPlayer(
              controller: betterPlayerController),
        ),
      ),
    );
  }
}
