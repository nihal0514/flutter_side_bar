import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final int index;
  final Function(int) onSelect;

  const SidebarItem(
      {super.key, required this.icon,
        required this.label,
        this.selected = false,
        required this.index,
        required this.onSelect,});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected ? Colors.purple : Colors.transparent,
      child: ListTile(
        leading: SizedBox(
          width: 24, // Set a fixed width for the leading widget
          height: 24, // Set a fixed height for the leading widget
          child:Icon(
            icon,
            color: selected ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          label,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontSize: 14),
        ),
        onTap: () {
          onSelect(index);
        },
      ),
    );
  }
}
