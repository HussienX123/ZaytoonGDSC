import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'zaytoon_setup_widget.dart' show ZaytoonSetupWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ZaytoonSetupModel extends FlutterFlowModel<ZaytoonSetupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for potid_input widget.
  FocusNode? potidInputFocusNode;
  TextEditingController? potidInputController;
  String? Function(BuildContext, String?)? potidInputControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (checkforpot)] action in Button widget.
  ApiCallResponse? foundPot;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    potidInputFocusNode?.dispose();
    potidInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
