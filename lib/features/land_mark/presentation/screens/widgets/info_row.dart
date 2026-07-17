import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makan/core/style/app_text_styles.dart';

class InfoRowContainers extends StatelessWidget {
  const InfoRowContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: _infoCard("1.2 كم", "من المركز")),
          SizedBox(width: 8),
          Expanded(child: _infoCard("€25", "سعر التذكرة")),
          SizedBox(width: 8),

          Expanded(child: _infoCard("2-3 ساعات", "المدة المقترحة")),
          SizedBox(width: 8),

          Expanded(child: _infoCard("4.8", "التقييم")),
        ],
      ),
    );
  }

  Widget _infoCard(String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(113, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: AppTextStyles.listRowTitle),
          Text(subtitle, style: AppTextStyles.listRowSubtitle),
        ],
      ),
    );
  }
}
