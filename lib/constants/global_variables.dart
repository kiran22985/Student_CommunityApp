import 'package:flutter/material.dart';

class GlobalVariables{
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;


  // STATIC IMAGES
  static const List<String> carouselImages = [
    'assets/images/carousel3.png',
    'assets/images/carousel4.png',
    'assets/images/carousel1.png',
    'assets/images/carousel2.png',
    'assets/images/carousel5.png',
    'assets/images/carousel6.png'
    
    // 'https://imgs.search.brave.com/PeDTKj3DT1wtsCeFf8f2LDxBAe8TxkiNHX5seGnIQBE/rs:fit:810:435:1/g:ce/aHR0cHM6Ly9yZXMu/Y2xvdWRpbmFyeS5j/b20vdXJiYW5jbGFw/L2ltYWdlL3VwbG9h/ZC9xX2F1dG8sZl9h/dXRvLGZsX3Byb2dy/ZXNzaXZlOnN0ZWVw/L2NhdGVnb3JpZXMv/Y2F0ZWdvcnlfdjIv/Y2F0ZWdvcnlfYWU2/YzAxZTAucG5n',
    // 'https://imgs.search.brave.com/lrjMxWf111gKfUa7wAV3t3UNs7m789i3GcXyET1Ojt8/rs:fit:810:435:1/g:ce/aHR0cHM6Ly9yZXMu/Y2xvdWRpbmFyeS5j/b20vdXJiYW5jbGFw/L2ltYWdlL3VwbG9h/ZC9xX2F1dG8sZl9h/dXRvLGZsX3Byb2dy/ZXNzaXZlOnN0ZWVw/L2NhdGVnb3JpZXMv/Y2F0ZWdvcnlfdjIv/Y2F0ZWdvcnlfOWY5/NzgzNzAucG5n',
    // 'https://imgs.search.brave.com/jxbRp4jj1JsFLON4Yw3-Tx5h7IjrOkZ1dO4mM5Fcjuw/rs:fit:768:288:1/g:ce/aHR0cHM6Ly9ob21l/YXBwbGlhbmNlc3Jl/cGFpcmluZGlhLmZp/bGVzLndvcmRwcmVz/cy5jb20vMjAyMS8w/MS9hYy1yZXBhaXIt/cmVwYWlyLWJhemFy/LTIxLWphbi5qcGc_/dz03Njg',
    // 'https://imgs.search.brave.com/_mQrU3FHGTNp4NBCvbu2dedfJfWiheCmem6gRZbdNaU/rs:fit:538:280:1/g:ce/aHR0cHM6Ly9yZXMu/Y2xvdWRpbmFyeS5j/b20vdXJiYW5jbGFw/L2ltYWdlL3VwbG9h/ZC9xX2F1dG8sZl9h/dXRvLGZsX3Byb2dy/ZXNzaXZlOnN0ZWVw/L2NhdGVnb3JpZXMv/Y2F0ZWdvcnlfdjIv/Y2F0ZWdvcnlfY2Nj/ODk4ZTAuanBlZw',
    // 'https://imgs.search.brave.com/Tg6BlPeQPbIjeRAaZqlRY4QM85aswbs1Jv3d9j9uCss/rs:fit:1200:720:1/g:ce/aHR0cHM6Ly9pbmRp/ZXNlZHVjYXRpb24u/Yi1jZG4ubmV0L3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIwLzA1/L2hvbWUtc2Vydmlj/ZS5qcGc',
    
  ];

   static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Appliances',
      'image': 'assets/images/appliance.png',
    },
    {
      'title': 'Painting',
      'image': 'assets/images/painting.png',
    },
    {
      'title': 'Electrical',
      'image': 'assets/images/electrical.png',
    },
    {
      'title': 'Cleaning',
      'image': 'assets/images/cleaning.png',
    },
    {
      'title': 'Home assist',
      'image': 'assets/images/homeassist.png',
    },
    {
      'title': 'Pest Control',
      'image': 'assets/images/pest.png',
    },
    {
      'title': 'Salon',
      'image': 'assets/images/salon.png',
    },
    {
      'title': 'AC service',
      'image': 'assets/images/ac.png',
    },
    
    
  ];

  
  static const List<Map<String, String>> ServiceImages1 = [
    {
      'title': 'Hair Services for women',
      'image': 'assets/images/hairservice.png',
    },
    {
      'title': 'Massage Therapy',
      'image': 'assets/images/masageforwomen.png',
    },
    {
      'title': 'Salon For women',
      'image': 'assets/images/salonforwomen.png',
    },
    {
      'title': 'Spa For women',
      'image': 'assets/images/spaforwomen.png',
    },
    
  ];

  static const List<Map<String, String>> ServiceImages2 = [
    {
      'title': 'Carpenters',
      'image': 'assets/images/carpenter.png',
    },
    {
      'title': 'Plumbers',
      'image': 'assets/images/plumbers.png',
    },
    {
      'title': 'Electricians',
      'image': 'assets/images/electrician.png',
    },
    {
      'title': 'Furniture making',
      'image': 'assets/images/furniture.png',
    },
    
  ];
  static const List<Map<String, String>> ServiceImages3 = [
    {
      'title': 'Bathroom and kitchen',
      'image': 'assets/images/bathroom.png',
    },
    {
      'title': 'Full Home cleaning',
      'image': 'assets/images/fullhome.png',
    },
    {
      'title': 'Sofa and carpet cleaning',
      'image': 'assets/images/sofa.png',
    },
    {
      'title': 'Disinfection services',
      'image': 'assets/images/disinfection.png',
    },
    
  ];
}