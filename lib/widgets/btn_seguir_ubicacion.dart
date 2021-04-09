part of 'widgets.dart';

class BtnSeguirUbicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // necesito hacer referencia a dos lugares, necesito 2 bloc (ubicacion y el controlador)
    final mapaBloc = BlocProvider.of<MapaBloc>(context);
    return BlocBuilder<MapaBloc, MapaState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(bottom: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 25,
            child: IconButton(
              icon: Icon(
                mapaBloc.state.seguirUbicacion
                    ? Icons.directions_run
                    : Icons.accessibility_new,
                color: Colors.black87,
              ),
              onPressed: () {
                mapaBloc.add(OnSeguirUbicacion());
              },
            ),
          ),
        );
      },
    );
  }
}
