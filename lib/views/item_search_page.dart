
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_unsplash/pages/details_page.dart';

import '../models/photos.dart';


Widget itemOfPhoto(Photo photo, int index) {
  return GestureDetector(
    onTap: () {
      // _callDetailsPage(photo);
      Get.to(DetailsPage());
    },
    child: SizedBox(
      height: (index % 5 + 5) * 50.0,
      child: Image.network(
        photo.urls.small,
        fit: BoxFit.cover,
      ),
    ),
  );
}