import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'auth_x_widget.dart' show AuthXWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthXModel extends FlutterFlowModel<AuthXWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddressREG widget.
  FocusNode? emailAddressREGFocusNode;
  TextEditingController? emailAddressREGController;
  String? Function(BuildContext, String?)? emailAddressREGControllerValidator;
  // State field(s) for passwordREG widget.
  FocusNode? passwordREGFocusNode;
  TextEditingController? passwordREGController;
  late bool passwordREGVisibility;
  String? Function(BuildContext, String?)? passwordREGControllerValidator;
  // State field(s) for confimpasswordREG widget.
  FocusNode? confimpasswordREGFocusNode;
  TextEditingController? confimpasswordREGController;
  late bool confimpasswordREGVisibility;
  String? Function(BuildContext, String?)? confimpasswordREGControllerValidator;
  // State field(s) for emailAddressLOG widget.
  FocusNode? emailAddressLOGFocusNode;
  TextEditingController? emailAddressLOGController;
  String? Function(BuildContext, String?)? emailAddressLOGControllerValidator;
  // State field(s) for passwordLOG widget.
  FocusNode? passwordLOGFocusNode;
  TextEditingController? passwordLOGController;
  late bool passwordLOGVisibility;
  String? Function(BuildContext, String?)? passwordLOGControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordREGVisibility = false;
    confimpasswordREGVisibility = false;
    passwordLOGVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressREGFocusNode?.dispose();
    emailAddressREGController?.dispose();

    passwordREGFocusNode?.dispose();
    passwordREGController?.dispose();

    confimpasswordREGFocusNode?.dispose();
    confimpasswordREGController?.dispose();

    emailAddressLOGFocusNode?.dispose();
    emailAddressLOGController?.dispose();

    passwordLOGFocusNode?.dispose();
    passwordLOGController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
