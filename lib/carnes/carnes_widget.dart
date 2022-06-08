import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarnesWidget extends StatefulWidget {
  const CarnesWidget({Key key}) : super(key: key);

  @override
  _CarnesWidgetState createState() => _CarnesWidgetState();
}

class _CarnesWidgetState extends State<CarnesWidget> {
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
          'Carnes/Mariscos',
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
                            'filete',
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
                                  '\$ 120',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLTZVW-h7-9gP3YQqJmgd1VyrHvpjOvHXLBw&usqp=CAU',
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
                            'pechuga de pollo ',
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
                                  '\$ 79',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz_hDYtDAUo-Ap_6RectSmXpzXPPn75mbm4w&usqp=CAU',
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
                            'filete ',
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
                                  '\$200',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUjw_2aXynE9E780-p_Dx-o5tbfJyPmRqYSw&usqp=CAU',
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
                            'chorrizo ',
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
                                  '\$45',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrLE5qpTwADnoQe6tAoEMbSOewxh4RxtPeTw&usqp=CAU',
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
                            'pollo',
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
                                  '\$120',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt7CQ3fmNiKzvTpKlsD7i9-rVS5CDGxD2Zjg&usqp=CAU',
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
                            'carne molida',
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
                                  '\$45 kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmn6LBHx31t_YgmHZZEkGlt18OpgtI-3Ilaw&usqp=CAU',
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
                            'pescado ',
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
                                  '120',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_V1GUUYOsRdLgMeMlmXjrejRRH_WNHq28Jg&usqp=CAU',
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
                            'camarones ',
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
                                  '\$120',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6z7b25xgDV57ZkkqhQPObIa4mEOWESFpSjw&usqp=CAU',
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
                            'chilango',
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
                            'pulpo',
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
                                  '\$150',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZm9cFb6wErh_OH2iBNz33R5eNSPDuf6arwAl9fTKB7BNc-NlrOuGCYkEgxE5WMO2d2xc&usqp=CAU',
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
                            'carne',
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
                                  '\$45',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2Rur5O4u7ef6cH-qEFHvcXTK56r9sbVnzw&usqp=CAU',
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
                            'filete sin hueso ',
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
                                  '\$250',
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
                                  'kg',
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBqJGVBonzYF_2mnL9SrHbi6lsa6eyRZNj5Q&usqp=CAU',
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
                            'colcha',
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
                                  '\$120',
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
                                  'kg',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
