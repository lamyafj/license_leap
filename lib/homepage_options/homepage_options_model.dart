import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'homepage_options_widget.dart' show HomepageOptionsWidget;
import 'package:flutter/material.dart';

class HomepageOptionsModel extends FlutterFlowModel<HomepageOptionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for state widget.
  String? stateValue1;
  FormFieldController<String>? stateValueController1;
  // State field(s) for state widget.
  String? stateValue2;
  FormFieldController<String>? stateValueController2;
  // State field(s) for state widget.
  String? stateValue3;
  FormFieldController<String>? stateValueController3;
  // State field(s) for state widget.
  String? stateValue4;
  FormFieldController<String>? stateValueController4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
