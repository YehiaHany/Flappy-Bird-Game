import 'package:device_preview/device_preview.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird_game/scrreens/game_over-screen.dart';
import 'package:flappy_bird_game/scrreens/main_menu_screen.dart';
import 'package:flappy_bird_game/scrreens/splashScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'game/flappy_bird_game.dart';

void main() =>   runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class MyGame extends StatelessWidget {
  final game = FlappyBirdGame();

   MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game,
      initialActiveOverlays: const[MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu':(context, _) => MainMenuScreen(game:game),
        'gameOver':(context, _) => GameoverScreen(game:game),

      },
    );
  }
}


