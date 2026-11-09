import 'package:flutter/material.dart';

void main() {
  runApp(
    ColoredBox(
      color: Colors.yellow,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            // Culoare de fundal albă, dar cu opacitate de 20% (efect de transparență/sticlă)
            color: Colors.redAccent.withValues(alpha: 0.2),

            // Colțuri rotunjite cu o rază de 20 de pixeli
            borderRadius: BorderRadius.circular(20.0),

            // O bordură fină care ajută la evidențierea efectului de transparență
            border: Border.all(
              color: Colors.red.withValues(alpha: 0.3),
              width: 1.5,
            ),

            // Umbra din spatele containerului pentru a-i da profunzime (efect 3D)
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10.0,
                offset: const Offset(0, 4), // Mută umbra puțin în jos
              ),
            ],
          ),

          padding: EdgeInsets.all(20.0),
          child: Text(
            'World Hello',

            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 20.0,
              fontSize: 60.0,
            ),
          ),
        ),
      ),
    ),
  );
}
