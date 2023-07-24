import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guidelines_page_model.dart';
export 'guidelines_page_model.dart';

class GuidelinesPageWidget extends StatefulWidget {
  const GuidelinesPageWidget({Key? key}) : super(key: key);

  @override
  _GuidelinesPageWidgetState createState() => _GuidelinesPageWidgetState();
}

class _GuidelinesPageWidgetState extends State<GuidelinesPageWidget> {
  late GuidelinesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuidelinesPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Guidelines',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Fira Sans',
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.rule_folder,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
