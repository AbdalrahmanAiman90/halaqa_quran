import 'dart:developer';

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:halqahquran/core/theme/color.dart';
import 'package:halqahquran/core/theme/style.dart';
import 'package:halqahquran/feature/muslem_service/data/model/azkar_model.dart';
import 'package:halqahquran/feature/muslem_service/ui/screen/zekr_screen.dart';
import 'package:halqahquran/util/screen_util.dart';
import 'package:page_transition/page_transition.dart';

class SingelIteamServiceWidget extends StatelessWidget {
  const SingelIteamServiceWidget({super.key, required this.iteamData});
  final dynamic iteamData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: AppScreenUtil.getResponsiveHeight(context, .1),
      decoration: BoxDecoration(
        color: AppColor.primeColor.withOpacity(.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppScreenUtil.getResponsiveHeight(context, .03)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(iteamData.tittel.toString(),
                  style: TextAppStyle.arabicStyle),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 800),
                      child: ZekrScreen(
                        tittel: iteamData.tittel,
                        iteamListData: iteamData.data!,
                      ),
                      isIos: true),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
