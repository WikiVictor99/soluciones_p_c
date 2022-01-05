import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../listas_soluciones/listas_soluciones_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SolucionesPCWidget extends StatefulWidget {
  const SolucionesPCWidget({Key key}) : super(key: key);

  @override
  _SolucionesPCWidgetState createState() => _SolucionesPCWidgetState();
}

class _SolucionesPCWidgetState extends State<SolucionesPCWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                          ),
                        ),
                        Text(
                          'Soluciones PC',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Poppins',
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                            shape: BoxShape.rectangle,
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.asset(
                                      'assets/images/IcoPCpng.png',
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: 'imageTag',
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'imageTag',
                              transitionOnUserGestures: true,
                              child: Image.asset(
                                'assets/images/IcoPCpng.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ListasSolucionesWidget(),
                                ),
                              );
                            },
                            text: 'Soluciones ',
                            options: FFButtonOptions(
                              width: 250,
                              height: 40,
                              color: Color(0xFF798092),
                              textStyle: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 4,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                          ),
                          child: Text(
                            'By WikiVictor',
                            style: FlutterFlowTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
