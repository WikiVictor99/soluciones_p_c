import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../listas_soluciones/listas_soluciones_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecuperarArchivosUsbWidget extends StatefulWidget {
  const RecuperarArchivosUsbWidget({Key key}) : super(key: key);

  @override
  _RecuperarArchivosUsbWidgetState createState() =>
      _RecuperarArchivosUsbWidgetState();
}

class _RecuperarArchivosUsbWidgetState
    extends State<RecuperarArchivosUsbWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListasSolucionesWidget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          'Recuperar archivos de USB',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF151B1E),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 90),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/maxresdefault_(1).jpg',
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Recuperar archivos perdidos de una USB',
                          style: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF151B1E),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            'Cómo recuperar archivos borrados de USB/disco duro/tarjeta SD usando CMD',
                            style: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF151B1E),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Pasos concretos:\n1. Presione las teclas Win + R y escriba: cmd, presione Enter para abrir la ventana de comando;\n\n2. Escriba: chkdsk E: /f y pulse Enter; (Sustituya E por la letra de unidad del dispositivo donde perdió archivos o datos;)\n\n3. Escriba: Y y pulse Enter para continuar;\n\n4. Escriba: E y pulse Enter otra vez; (Sustituya E por la letra de unidad del dispositivo donde perdió archivos o datos;)\n\n5. Escriba: E: \\>attrib -h -h -r -s /s /d *.y pulse Enter  (reemplace E por la letra de unidad del dispositivo donde perdió archivos o datos).\n\nDespués de esto, sus archivos borrados o perdidos se encontrarán en una carpeta recién creada en la tarjeta SD, unidad USB o disco duro. Puede volver a cambiar la extensión del archivo a un formato normal y volver a hacer que los archivos encontrados sean reutilizables.',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
