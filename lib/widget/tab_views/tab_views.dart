import 'dart:math';

import 'package:flutter/material.dart';
import 'package:so_runna/widget/tab_views/tasks_list/tasks_list.dart';
import 'package:so_runna/style/colors.dart';

class TabViews extends StatefulWidget {
  const TabViews({Key? key}) : super(key: key);

  @override
  State<TabViews> createState() => _TabViewsState();
}

class _TabViewsState extends State<TabViews>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(body: TasksList()),
        Positioned(
          top: -20,
          right: -20,
          child: _buildTopDropdownButton(),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: _buildAddButton(),
        ),
      ],
    );
  }

  SizedBox _buildAddButton() {
    return SizedBox(
      width: 65,
      height: 65,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 20,
        backgroundColor: AppColors.blackPurple.withOpacity(0.98),
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }

  Widget _buildTopDropdownButton() {
    return Stack(
      children: [
        FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20,
          backgroundColor: AppColors.deepBlackPurple.withOpacity(0.9),
          onPressed: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: Transform.rotate(
                  angle: -pi / 4, child: const Icon(Icons.arrow_back_ios))),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

// decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(50)),
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.lavenderPurple.withOpacity(1),
//             blurRadius: 20,
//             // offset: const Offset(3, 3),
//           )
//         ],
//       ),

// Expanded(
                        //   child: Stack(
                        //     children: [
                        //       ConstrainedBox(
                        //         constraints: _descTextShowFlag
                        //             ? BoxConstraints()
                        //             : BoxConstraints(maxHeight: 50),
                        //         child: Text.rich(
                        //           TextSpan(
                        //               style: const TextStyle(fontSize: 14),
                        //               children: <TextSpan>[
                        //                 const TextSpan(
                        //                     text:
                        //                         'You can read the description of '),
                        //                 TextSpan(
                        //                     text: 'task ${index + 1}',
                        //                     style: const TextStyle(
                        //                         fontWeight: FontWeight.bold)),
                        //                 const TextSpan(
                        //                     text:
                        //                         ' here. In the future, in order to read the full description, you will have to click on the arrow to expand the full description. This widget contains an opaque Container widget. We wrap the Container widget with an InkWell widget and add the onTap handler.'),
                        //               ]),
                        //           softWrap: true,
                        //           overflow: TextOverflow.fade,
                        //         ),
                        //       ),
                        //       _descTextShowFlag
                        //           ? Align(
                        //               alignment: Alignment.bottomRight,
                        //               child: IconButton(
                        //                 onPressed: _openDescription,
                        //                 icon: const Icon(
                        //                   Icons.arrow_drop_down,
                        //                   size: 35,
                        //                 ),
                        //               ),
                        //             )
                        //           : Center(
                        //               child: IconButton(
                        //                 onPressed: _openDescription,
                        //                 icon: const Icon(
                        //                   Icons.arrow_drop_up_outlined,
                        //                   size: 35,
                        //                 ),
                        //               ),
                        //             )
                        //     ],
                        //   ),
                        // ),
