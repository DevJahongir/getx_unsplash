import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_unsplash/pages/collection_page.dart';
import 'package:getx_unsplash/pages/collection_photos_page.dart';
import 'package:getx_unsplash/pages/details_page.dart';
import 'package:getx_unsplash/pages/home_page.dart';
import 'package:getx_unsplash/pages/search_page.dart';
import 'package:getx_unsplash/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';


import 'config/root_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
        SearchPage.id: (context) => const SearchPage(),
        CollectionPage.id: (context) => const CollectionPage(),
        CollectionPhotosPage.id: (context) => const CollectionPhotosPage(),
        DetailsPage.id: (context) => DetailsPage(),
      },
      home: const SplashPage(),
      initialBinding: RootBinding(),
    );
  }
}