import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final Function(int)? onTap;
  final int index;

  MainBottomNavigationBar({required this.onTap,required this.index, super.key});

  
 

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 17, color: Color(0x3cDFDAD9)),
          ],
        ),
        child: SizedBox(
          height: 65,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              onTap: onTap,
              currentIndex: index,
              backgroundColor: const Color(0xFFFFFAF3),
              selectedItemColor: const Color(0xffEA9D34),
              selectedLabelStyle: const TextStyle(
                color: Color(0xffEA9D34),
                fontFamily: "Comfortaa",
              ),
              unselectedItemColor: const Color(0xff575279),
              unselectedLabelStyle:
                  const TextStyle(color: Color(0xff575279), fontFamily: "Comfortaa"),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("svgs/house.svg",
                      semanticsLabel: 'home Icon'),
                  activeIcon: SvgPicture.asset("svgs/house_filled.svg",
                      semanticsLabel: 'home Icon'),
                  label: "home",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("svgs/bag.svg",
                      semanticsLabel: 'Despense Icon'),
                  activeIcon: SvgPicture.asset("svgs/bag_filled.svg",
                      semanticsLabel: 'Despense Icon'),
                  label: "Despensa",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("svgs/chart.svg",
                      semanticsLabel: 'data Icon'),
                  activeIcon: SvgPicture.asset("svgs/chart_filled.svg",
                      semanticsLabel: 'data Icon'),
                  label: "dados",
                ),
              ],
            ),
          ),
        ),
      );
  }
}