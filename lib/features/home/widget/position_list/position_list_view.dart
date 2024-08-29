import 'package:flutter/material.dart';
import 'package:guide_my/features/home/data/model/position_model.dart';
import 'package:guide_my/features/home/widget/position_list/positon_list_view_item.dart';

class PositionListView extends StatelessWidget {
  final List<PositionModel?>? positionModel;

  const PositionListView({super.key,required this.positionModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: positionModel!.length,
        itemBuilder: (context, index) {
          return PositionListViewItem(positionModel: positionModel![index]!);
        },
      ),
    );
  }
}
