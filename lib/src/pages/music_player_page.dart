import 'package:flutter/material.dart';
import 'package:music_player/src/widgets/custom_appbar.dart';
import 'package:music_player/src/helpers/helpers.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarr(),
          ImagenDiscoDuracion(),
          TituloPlay(),
          Expanded(child: Lyrics()),
        ],
      ),
    );
  }
}

class Lyrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();
    return Container(
      child: ListWheelScrollView(
        physics: BouncingScrollPhysics(),
        itemExtent: 42.0,
        diameterRatio: 1.5,
        children: lyrics.map((linea) => (Text(
              linea,
              style:
                  TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.6)),
            ))).toList(),
      ),
    );
  }
}

class TituloPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      margin: EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Far Away',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              Text(
                '-Breaking Benjamin-',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
          Spacer(),
          FloatingActionButton(
            elevation: 0.0,
            highlightElevation: 0.0,
            onPressed: () {},
            backgroundColor: Color(0xffF8CB51),
            child: Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}

class ImagenDiscoDuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      margin: EdgeInsets.only(top: 70.0),
      child: Row(
        children: [
          ImagenDisco(),
          SizedBox(width: 30.0),
          BarraProgreso(),
          SizedBox(width: 20.0),
        ],
      ),
    );
  }
}

class BarraProgreso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(color: Colors.white.withOpacity(0.4));
    return Container(
      child: Column(
        children: [
          Text('00:00', style: estilo),
          SizedBox(height: 10.0),
          Stack(
            children: [
              Container(
                width: 3.0,
                height: 230.0,
                color: Colors.white.withOpacity(0.1),
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  width: 3.0,
                  height: 100.0,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text('00:00', style: estilo),
        ],
      ),
    );
  }
}

class ImagenDisco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.0),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Color(0xff484750), Color(0xff1E1C24)])),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: AssetImage('assets/aurora.jpg'),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: Color(0xff1C1C25),
                  borderRadius: BorderRadius.circular(100)),
            )
          ],
        ),
      ),
    );
  }
}
