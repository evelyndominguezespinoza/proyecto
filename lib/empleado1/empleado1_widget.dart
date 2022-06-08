import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Empleado1Widget extends StatefulWidget {
  const Empleado1Widget({Key key}) : super(key: key);

  @override
  _Empleado1WidgetState createState() => _Empleado1WidgetState();
}

class _Empleado1WidgetState extends State<Empleado1Widget> {
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
                builder: (context) => NavBarPage(initialPage: 'cajeros'),
              ),
            );
          },
        ),
        title: Text(
          'Salvador Ramirez',
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
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://http2.mlstatic.com/D_NQ_NP_890416-MLM43058183915_082020-O.jpg',
                  ),
                ),
              ),
              Text(
                'Nombre y apellido :salvador ramirez ',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'correo : salvadoramirez79@gmail.com',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  'genero: M',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Text(
                'estado sivil :soltero ',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'hijos : 3',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                child: Text(
                  'direccion : general candelario servantes 7875',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Text(
                'ciudad: juerez chihuahua ',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'Numero de telefono :656404075',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'seguro medico :Ava',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'estudio: si prepa',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
