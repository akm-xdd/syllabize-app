import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'books_page_model.dart';
export 'books_page_model.dart';

class BooksPageWidget extends StatefulWidget {
  const BooksPageWidget({Key? key}) : super(key: key);

  @override
  _BooksPageWidgetState createState() => _BooksPageWidgetState();
}

class _BooksPageWidgetState extends State<BooksPageWidget> {
  late BooksPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BooksPageModel());
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
            'Books',
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
                  Icons.menu_book_rounded,
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
