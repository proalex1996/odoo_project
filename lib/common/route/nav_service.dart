import 'package:flutter/material.dart';
import 'package:odoo_project/common/dialog/error_dialog.dart';
import 'package:odoo_project/common/dialog/loading_dialog.dart';
import 'package:odoo_project/common/listener/listener.dart';
import 'package:odoo_project/common/route/router_builder.dart';

enum DialogTypes {
  loading,
  error,
}

class NavService {
  bool isDialogShowing = false;
  bool isForceScreenShowing = false;
  bool isFirstOpenApp = false;
  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  openDialog({
    required DialogTypes types,
    required Map<String, dynamic> data,
    RightTapListener? rightTapListener,
    LeftTapListener? leftTapListener,
    SingleTapListener? singleTapListener,
    TryAgainTapListener? tryAgainTapListener,
    ConfirmTapListener? confirmTapListener,
    CarbonCopyTapListener? carbonCopyTapListener,
    PopTapListener? popTapListener,
    Widget? widget,
    bool byPassDismiss = true,
  }) {
    if (byPassDismiss) {
      dismissDialog();
    }
    Widget content = Container();
    switch (types) {
      case DialogTypes.error:
        content = ErrorDialog(
          message: data['message'],
          singleTapListener: (value) {
            singleTapListener!(value);
          },
          title: data['title'],
          strCenter: data['str_center'],
        );
        break;
      case DialogTypes.loading:
        content = const LoadingDialog();
        break;
    }
    showDialog(
      barrierDismissible: false,
      context: navKey.currentContext!,
      builder: (BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: content,
      ),
    );
    isDialogShowing = true;
  }

  dismissDialog() {
    if (_isThereCurrentDialogShowing(navKey.currentContext!)) {
      isDialogShowing = false;
      popCurrentScreen();
    }
  }

  navigateTo(String routeName, {PopScreenListener? listener}) {
    return navKey.currentState?.pushNamed(routeName).then((value) {
      if (listener != null) {
        listener(value);
      }
    });
  }

  navigateToWithArgs(String routeName,
      {Object? args, PopScreenListener? listener}) {
    return navKey.currentState
        ?.pushNamed(routeName, arguments: args)
        .then((value) {
      if (listener != null) {
        listener(value);
      }
    });
  }

  popAllAndNavigateToWithArgs(String routeName, {Object? args}) {
    return navKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
      arguments: args,
      (Route<dynamic> route) => false,
    );
  }

  popAndNavigateTo(String routeName, {PopScreenListener? listener}) {
    return navKey.currentState?.pushReplacementNamed(routeName).then((value) {
      if (listener != null) {
        listener(value);
      }
    });
  }

  popAndNavigateToWithArgs(String routeName,
      {Object? args, PopScreenListener? listener}) {
    return navKey.currentState
        ?.pushReplacementNamed(routeName, arguments: args)
        .then((value) {
      if (listener != null) {
        listener(value);
      }
    });
  }

  popCurrentScreen() {
    return navKey.currentState?.pop();
  }

  popCurrentScreenWithData({Object? args}) {
    return navKey.currentState?.pop(args);
  }

  popUntilScreen() {
    return navKey.currentState?.popUntil((route) {
      if (route.settings.name != RouterPath.init) return false;
      return true;
    });
  }

  _isThereCurrentDialogShowing(BuildContext context) {
    return navKey.currentState!.canPop() && isDialogShowing;
  }
}
