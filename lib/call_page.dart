import 'package:flutter/material.dart';
import 'package:video_call_app/login_screen.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class MyCall extends StatelessWidget {
  const MyCall({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 58576236,
      appSign:
          'baa76544f21186522f934e7a1b34c0cc6e2eccece2439585d79191d7fc0adc29',
      userID: MyLogin.userId,
      userName: MyLogin.name,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
