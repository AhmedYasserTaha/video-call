import 'package:flutter/material.dart';
import 'package:video_call_app/constent.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoConferencePage extends StatelessWidget {
  final String conferenceID;
  final String userName;
  const VideoConferencePage({
    super.key,
    required this.conferenceID,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID:
            Constent
                .zegoAppId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign:
            Constent
                .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: DateTime.now().microsecondsSinceEpoch.toString(),
        userName: userName,
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}
