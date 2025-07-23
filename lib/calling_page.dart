import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'constant.dart';

class CallingPage extends StatelessWidget {
  final String callId;
  final int userId = Random().nextInt(1000000);

  CallingPage({super.key, required this.callId});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Constant.appId,
      appSign: Constant.appSign,
      userID: userId.toString(),
      userName: 'user_$userId',
      callID: callId,
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall(),
    );
  }
}
