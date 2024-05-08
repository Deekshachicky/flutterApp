import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Iconspage extends StatefulWidget {
  const Iconspage({super.key});

  @override
  State<Iconspage> createState() => _IconspageState();
}

class _IconspageState extends State<Iconspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'This is Google Fonts',
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
          Icon(FeatherIcons.bell),
        ],



      ),
    );
  }
}
