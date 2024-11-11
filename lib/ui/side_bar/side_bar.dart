import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdemosidebar/ui/side_bar/side_bar_item.dart';
import 'package:flutterdemosidebar/utils/Utilities.dart';

class Sidebar extends StatelessWidget {
  final Function(int) onSelect;
  final int selectedIndex;

  const Sidebar(
      {super.key, required this.onSelect, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.20,
      color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 280,
            height: 70,
          ),
          ...List.generate(
            Data.sidebarItems.length,
                (index) => SidebarItem(
              icon: Data.sidebarItems[index].icon,
              label: Data.sidebarItems[index].label,
              selected: selectedIndex == index,
              index: index,
              onSelect: onSelect,
            ),
          ),
          SizedBox(
            width: 280,
            height: MediaQuery.of(context).size.height*0.50,
          ),
        ],
      ),
    );
  }
}
