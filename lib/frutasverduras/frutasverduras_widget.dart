import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrutasverdurasWidget extends StatefulWidget {
  const FrutasverdurasWidget({Key key}) : super(key: key);

  @override
  _FrutasverdurasWidgetState createState() => _FrutasverdurasWidgetState();
}

class _FrutasverdurasWidgetState extends State<FrutasverdurasWidget> {
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
                builder: (context) => NavBarPage(initialPage: 'Articulos'),
              ),
            );
          },
        ),
        title: Text(
          'Frutas y Verduras',
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
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Manzana',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '25kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbdfEVjuabtgN9Nq-k9bOGQbV7C8-po_b_DQ&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Platano',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '45kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQmskNTTOj5ToFrnN5ndD_DlvE6q7Xl_8aBg&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sandia ',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '70kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6r-hVcUJd1wpLSMcksgnHneyJBV6Kzm6GiQ&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Papaya',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '55kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUG27CrlWzFKdALN8u7B0Tt0-FZzMlDahYwg&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fresa',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '28kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsIMZoerX_UyjnNX-DQWFwawAMZda7qYbUhg&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Durazno',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '30kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB84fS1b1c9tzb5mejb_CGQocQC9lty8khAA&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pera',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '20kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Brocoli',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '60kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zanahoria',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '25kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMGKHSjjDZvuTqbSv2v8YAJAQtutCPz7_78w&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aguacate',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '80kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1TPREQNIF1qC3mD1JJhs65YhNV1bOx6q5GA&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lechuga',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '\$',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '25kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtB1_dR_N3GEHitVFEUAAf14DH4P8nCv3w1w&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Calabaza ',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '40kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  'subtext',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_E5L_an79AtjvMYfZ1lXon9UxfJgdhy62pw&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'cebolla morada ',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '52kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf51UAhgsc5_CZgBgQgfm36swsgLuNiGHE2w&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pepino',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  '25kg',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDokCL-eE2e5gchdJ7jDnrmeeEQYANr60ryw&usqp=CAU',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Papas ',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  'Subtitle',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  'subtext',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x32000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tomate',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  'Subtitle',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                                child: Text(
                                  'subtext',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
