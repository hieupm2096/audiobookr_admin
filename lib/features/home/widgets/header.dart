import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        if (!Responsive.isDesktop(context)) const SizedBox(width: 8.0),
        if (!Responsive.isMobile(context))
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        // if (!Responsive.isMobile(context))
        Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        // Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorName.illusion,
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.white10),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Norm.Os"),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
    );
  }
}
