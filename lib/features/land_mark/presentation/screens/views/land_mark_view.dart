import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/features/land_mark/presentation/screens/widgets/about_land_mark_widget.dart';
import 'package:makan/features/land_mark/presentation/screens/widgets/addtional_land_mark_images.dart';
import 'package:makan/features/land_mark/presentation/screens/widgets/book_button.dart';
import 'package:makan/features/land_mark/presentation/screens/widgets/bottom_sheet_header.dart';
import 'package:makan/features/land_mark/presentation/screens/widgets/info_row.dart';
import 'package:makan/features/land_mark/presentation/screens/widgets/land_mark_image.dart';

class LandMarkView extends StatefulWidget {
  const LandMarkView({super.key});

  @override
  State<LandMarkView> createState() => _LandMarkViewState();
}

class _LandMarkViewState extends State<LandMarkView> {
  final DraggableScrollableController _controller =
      DraggableScrollableController();
  double _currentSize = 0.4;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _currentSize = _controller.size;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double scale = 1.0 + (_currentSize - 0.4) * 0.5;
    return Scaffold(
      body: Stack(
        children: [
          Transform.scale(scale: scale, child: LandMarkImage()),
          // Draggable Content Sheet
          DraggableScrollableSheet(
            controller: _controller,
            initialChildSize: 0.55,
            minChildSize: 0.4,
            maxChildSize: 0.7,
            builder: (context, controller) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(1, -1),
                    colors: AppColors.bottomSheetGradient,
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.r),
                  ),
                ),
                child: CustomScrollView(
                  controller: controller,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            LandMarkBottomSheetHeader(),
                            SizedBox(height: 20),
                            InfoRowContainers(),
                            SizedBox(height: 20),
                            AbuotLandMarkWidget(),
                            SizedBox(height: 20),
                            AddtionalLandMarkImages(),
                            SizedBox(height: 20),
                            BookButton(),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
