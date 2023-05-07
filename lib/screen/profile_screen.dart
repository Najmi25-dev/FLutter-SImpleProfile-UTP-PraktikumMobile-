import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_sederhana/screen/profile_body_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: GoogleFonts.poppins(
          color: const Color(0x95484848),
          fontWeight: FontWeight.w600,
        ),
        ),
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 16, 224, 78),
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: ProfileBodyScreen(),
    );
  }
}