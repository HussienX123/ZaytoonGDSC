import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'zaytoon_logout_model.dart';
export 'zaytoon_logout_model.dart';

class ZaytoonLogoutWidget extends StatefulWidget {
  const ZaytoonLogoutWidget({super.key});

  @override
  State<ZaytoonLogoutWidget> createState() => _ZaytoonLogoutWidgetState();
}

class _ZaytoonLogoutWidgetState extends State<ZaytoonLogoutWidget> {
  late ZaytoonLogoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ZaytoonLogoutModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Text(
                  'Account settings',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
              titlePadding: EdgeInsets.all(24.0),
            ),
            toolbarHeight: double.infinity,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/plant_(2).png',
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Divider(
                height: 50.0,
                thickness: 1.0,
                indent: 10.0,
                endIndent: 10.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              FFButtonWidget(
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.pushNamedAuth('AuthX', context.mounted);
                },
                text: 'Logout',
                options: FFButtonOptions(
                  height: 40.0,
                  padding:
                      EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 60.0, 15.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
