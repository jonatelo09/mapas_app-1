import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapas_app/pages/acceso_gps_page.dart';

import 'package:mapas_app/bloc/mi_ubicacion/mi_ubicacion_bloc.dart';
import 'package:mapas_app/bloc/mapa/mapa_bloc.dart';

import 'package:mapas_app/pages/loading_page.dart';
import 'package:mapas_app/pages/mapa_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MiUbicacionBloc()),
        BlocProvider(create: (_) => MapaBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Mapas',
        initialRoute: 'loading',
        routes: {
          'loading': (BuildContext context) => LoadingPage(),
          'acceso': (BuildContext context) => AccesoGpsPage(),
          'mapa': (BuildContext context) => MapaPage()
        },
      ),
    );
  }
}
