import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class logoKecil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 20,
            width: 24,
            child: Image.asset('images/icon.png'),
          ),
          Container(
            width: 54,
            height: 18,
            child: Image.asset('images/AltaTech.png'),
          ),
        ],
      ),
    );
  }
}

class judulAtas extends StatelessWidget {
  final String inputText;

  const judulAtas({required this.inputText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Container(
              // width: 301,
              // height: 48,
              // padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Text(
                inputText,
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(17, 17, 17, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NotificationError extends StatelessWidget {
  final String content;
  final String judul;

  const NotificationError({required this.content, required this.judul});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final boxWidth = screenSize.width * 0.8;
    final boxHeight = screenSize.height * 0.270;

    return Dialog(
      child: Container(
        width: boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              judul,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(238, 46, 46, 1),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 18),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(38, 78, 202, 1),
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                minimumSize: Size(190, 37),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'OK',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

ElevatedButton fullWidthButton(
    {required String label, required void Function() onPressed}) {
  return ElevatedButton(
    key: Key('$label-key'),
    onPressed: onPressed,
    style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size.fromHeight(56)),
        backgroundColor: MaterialStateProperty.all(const Color(0xFF264ECA))),
    child: Text(
      label,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),
    ),
  );
}
