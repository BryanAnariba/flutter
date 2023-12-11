import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: supongo que con esto obtenemos los colores del material o del sistema
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Holi!!!', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10),
        _ImageBubbleImage(),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubbleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: con esta linea obtenemos el tamanio/dimensiones del dispositivo
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/1-af11222d8d4af90bdab8fc447c8cfebf.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child; // si ya cargo completamente la imagen mostrarla
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('My Love is sending a pic'),
          );
        },
      )
    );
  }
}