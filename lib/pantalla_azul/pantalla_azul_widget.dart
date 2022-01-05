import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../listas_soluciones/listas_soluciones_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaAzulWidget extends StatefulWidget {
  const PantallaAzulWidget({Key key}) : super(key: key);

  @override
  _PantallaAzulWidgetState createState() => _PantallaAzulWidgetState();
}

class _PantallaAzulWidgetState extends State<PantallaAzulWidget> {
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
          'Error Pantalla Azul',
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
                        'assets/images/RA35XLBOE5DLZLZRDGYSB3FIFQ.jpg',
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
                          'Pantalla azul de la muerte ',
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
                            'Cómo solucionar la mayoría de ellos.',
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
                            'Evidentemente, el primero es apagar y encender tu ordenador, e intentar dejar que Windows lo solucione solo.Siempre es importante detectar el momento exacto en el que se te ha dado el error, de manera que tras reiniciar puedas volver a hacer lo mismo que provocó el pantallazo. Si es un error puntual, no volverás a tener problemas, pero si vuelve a fallar sabrás que hay algo que provoca ese error.\n\nCuando el error se da siempre al iniciar una misma aplicación, puede ser por un problema provocado por ella. Pueden ser incompatibilidades, problemas de drivers, u del registro. Lo mejor es primero intentar reinstalar esa aplicación, desinstalándola y eliminando todos sus archivos en el proceso. Si eso no es suficiente, busca aplicaciones alternativas.\n\nEn el caso de que esto no sea suficiente, utiliza el solucionador de problemas de Windows 10. Para ejecutarlo, abre el menú de inicio y busca la herramienta Solucionar otros problemas. Aquí, debes haber detectado en qué momento te está dando el error, ya que podrás iniciar el proceso automático de solucionar varios tipos de errores.',
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
