import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'homepage_options_model.dart';
export 'homepage_options_model.dart';

class HomepageOptionsWidget extends StatefulWidget {
  const HomepageOptionsWidget({super.key});

  @override
  State<HomepageOptionsWidget> createState() => _HomepageOptionsWidgetState();
}

class _HomepageOptionsWidgetState extends State<HomepageOptionsWidget> {
  late HomepageOptionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageOptionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF003049),
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: const AlignmentDirectional(1.0, -1.0),
            child: Text(
              '15',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: const Color(0xFFF77F00),
                    fontSize: 40.0,
                  ),
            ),
          ),
          actions: const [
            Align(
              alignment: AlignmentDirectional(0.4, -0.41),
              child: Icon(
                Icons.person,
                color: Color(0xFFF77F00),
                size: 50.0,
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Stack(
          alignment: const AlignmentDirectional(0.0, -1.0),
          children: [
            Align(
              alignment: const AlignmentDirectional(-0.04, -0.83),
              child: Text(
                'My Study Plan',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: const Color(0xFFF77F00),
                      fontSize: 35.0,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.04, 0.84),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Pay',
                  options: FFButtonOptions(
                    width: 150.0,
                    height: 50.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF003049),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFFF77F00),
                          fontSize: 30.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -0.52),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.stateValueController1 ??=
                      FormFieldController<String>(null),
                  options: const [
                    'Reserve Lessons',
                    'Reserve Exams',
                    'View Reservations'
                  ],
                  onChanged: (val) => setState(() => _model.stateValue1 = val),
                  height: 56.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF003049),
                        fontSize: 18.0,
                      ),
                  hintText: 'Theoritical',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 15.0,
                  ),
                  fillColor: const Color(0xFFDBFFBA),
                  elevation: 2.0,
                  borderColor: const Color(0xFF003049),
                  borderWidth: 0.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -0.29),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.stateValueController2 ??=
                      FormFieldController<String>(null),
                  options: const ['0', '1', '2'],
                  onChanged: (val) => setState(() => _model.stateValue2 = val),
                  height: 56.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF003049),
                        fontSize: 18.0,
                      ),
                  hintText: 'Simulations',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 15.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 2.0,
                  borderColor: const Color(0xFF003049),
                  borderWidth: 0.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -0.06),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.stateValueController3 ??=
                      FormFieldController<String>(null),
                  options: const ['0', '1', '2'],
                  onChanged: (val) => setState(() => _model.stateValue3 = val),
                  height: 56.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF003049),
                        fontSize: 18.0,
                      ),
                  hintText: 'Practical',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 15.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 2.0,
                  borderColor: const Color(0xFF003049),
                  borderWidth: 1.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.16),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.stateValueController4 ??=
                      FormFieldController<String>(null),
                  options: const ['0', '1', '2'],
                  onChanged: (val) => setState(() => _model.stateValue4 = val),
                  height: 56.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF003049),
                        fontSize: 18.0,
                      ),
                  hintText: 'Grades',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 15.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 2.0,
                  borderColor: const Color(0xFF003049),
                  borderWidth: 1.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
