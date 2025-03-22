import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_2/screens/home_screen.dart';
import 'package:my_project_2/theme.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home : HomeScreen(),
    theme: MaterialTheme(GoogleFonts.poppinsTextTheme()).light(),
    debugShowCheckedModeBanner:false,),);
}