import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class Empleado3Widget extends StatefulWidget {
  const Empleado3Widget({Key key}) : super(key: key);

  @override
  _Empleado3WidgetState createState() => _Empleado3WidgetState();
}

class _Empleado3WidgetState extends State<Empleado3Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NavBarPage(initialPage: 'cajeros'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF001E85),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'cajeros'),
              ),
            );
          },
        ),
        title: Text(
          'Ian Dominguez',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(130, 0, 0, 0),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
