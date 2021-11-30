import 'package:flutter/material.dart';
import 'package:ch6_basics/models/todo_menu_item.dart';

class PopupMenuButtonWidget extends StatelessWidget implements PreferredSize {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75.0);

  @override
  Widget get child => Container(
        color: Colors.lightGreen.shade100,
        child: Center(
          child: PopupMenuButton<TodoMenuItem>(
            icon: const Icon(Icons.view_list),
            onSelected: (valueSelected) {
              print('valueSelected: ${valueSelected.title}');
            },
            itemBuilder: (BuildContext context) {
              return foodMenuList.map((TodoMenuItem todoMenuItem) {
                return PopupMenuItem<TodoMenuItem>(
                  value: todoMenuItem,
                  child: Row(children: [
                    Icon(todoMenuItem.icon.icon),
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text(todoMenuItem.title),
                  ]),
                );
              }).toList();
            },
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
