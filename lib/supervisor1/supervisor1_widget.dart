import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Supervisor1Widget extends StatefulWidget {
  const Supervisor1Widget({Key key}) : super(key: key);

  @override
  _Supervisor1WidgetState createState() => _Supervisor1WidgetState();
}

class _Supervisor1WidgetState extends State<Supervisor1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                builder: (context) => NavBarPage(initialPage: 'Supervisores'),
              ),
            );
          },
        ),
        title: Text(
          'Jassiel Gerardo Sandoval',
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://media.diariolasamericas.com/p/43cf877bcdd01a92941f63428b8e9f9d/adjuntos/216/imagenes/002/118/0002118291/1200x1200/smart/william-levy-ap.jpeg',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                    child: Text(
                      'Nombre y apellido: Jassiel gerardo sandoval',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Text(
                    'Sexo:M',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    'Casado : no ',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    'hijos : no ',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    'seguro medico: si',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
              Text(
                'numero de telefono : 65620003',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'ciudad : Gimenez',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
