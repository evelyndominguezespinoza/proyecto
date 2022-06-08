import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclucionesfinalesWidget extends StatefulWidget {
  const ConclucionesfinalesWidget({Key key}) : super(key: key);

  @override
  _ConclucionesfinalesWidgetState createState() =>
      _ConclucionesfinalesWidgetState();
}

class _ConclucionesfinalesWidgetState extends State<ConclucionesfinalesWidget> {
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
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'CONCLUSION',
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(14, 140, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                        child: Text(
                          'Smart',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                'S-Mart es una cadena mexicana de supermercados, la cual surgió en la Ciudad Juárez, Chihuahua, México en el año 1975. Son tiendas que están abiertas las 24 horas del día, los 7 días de la semana, y con marca propia de algunos alimentos con el mismo nombre, los cuales son surtidos de los Estados Unidos. Es una tienda que tiene fuerte arraigo de identidad local en la Cd.Juárez, al igual que otras empresas locales, tales como las tiendas de conveniencia denominadas Del Río y Superettes.',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
