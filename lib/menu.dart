import 'package:flutter/material.dart';
import 'colors.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({Key? key, required this.selected}) : super(key: key);

  final int selected;

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  int _hovered = -1;

  void setHovered(int? id) {
    setState(() {
      if (id == null) {
        _hovered = -1;
      } else {
        _hovered = id;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dark_background,
      width: 220,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          makeItem("Assets", 0, "/assets"),
          makeItem("Signing", 1, "/signing"),
          makeItem("Construct", 2, "/construct"),
          makeItem("Settings", 3, "/settings"),
        ],
      ),
    );
  }

  Widget makeItem(String tittle, int id, String route) {
    return InkWell(
      child: MenuItem(
        title: tittle,
        selected: widget.selected == id,
        hovered: _hovered == id,
      ),
      onTap: () {
        if (widget.selected != id) {
          Navigator.pushNamed(context, route);
        }
      },
      onHover: (val) {
        val ? setHovered(id) : setHovered(null);
      },
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key? key,
      required this.title,
      required this.selected,
      required this.hovered})
      : super(key: key);

  final String title;
  final bool selected;
  final bool hovered;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                color: selected || hovered
                    ? AppColors.yellow.shade500
                    : Colors.white),
          ),
        ),
        Divider(
            color: selected || hovered
                ? AppColors.yellow.shade500
                : AppColors.menu_divider,
            height: 10,
            thickness: 1)
      ],
    );
  }
}
