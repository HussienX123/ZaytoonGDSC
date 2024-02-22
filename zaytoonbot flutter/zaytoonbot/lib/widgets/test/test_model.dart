import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/strength_indicator/strength_indicator_widget.dart';
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel1;
  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    strengthIndicatorModel1 =
        createModel(context, () => StrengthIndicatorModel());
    strengthIndicatorModel2 =
        createModel(context, () => StrengthIndicatorModel());
  }

  @override
  void dispose() {
    strengthIndicatorModel1.dispose();
    strengthIndicatorModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
