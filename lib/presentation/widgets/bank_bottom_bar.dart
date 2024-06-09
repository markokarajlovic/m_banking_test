import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BankBottomBar extends StatelessWidget {
  final List<BankBottomBarItem> customBottomBarItems;
  final int currentIndex;
  final Function(int) onTap;

  const BankBottomBar({
    super.key,
    required this.customBottomBarItems,
    this.currentIndex = 0,
    required this.onTap,
  });

  /// body of nav bar.
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black38,
            width: 0.5,
          ),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < customBottomBarItems.length; i++) ...[
              Expanded(
                child: BankBottomBarItems(
                  label: customBottomBarItems[i].label,
                  icon:
                      currentIndex == i ? customBottomBarItems[i].selectedIcon : customBottomBarItems[i].unselectedIcon,
                  currentIndex: currentIndex,
                  index: i,
                  onTap: onTap,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

class BankBottomBarItem {
  String label;
  Widget selectedIcon;
  Widget unselectedIcon;

  BankBottomBarItem({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
  });
}

void alwaysAssert(bool condition, String message) {
  if (!condition) {
    throw AssertionError(message);
  }
}

class BankBottomBarItems extends StatelessWidget {
  final String label;

  final Widget icon;
  final int? currentIndex;
  final int index;
  final Function(int) onTap;

  const BankBottomBarItems({
    super.key,
    required this.label,
    required this.icon,
    this.currentIndex,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 7),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Theme.of(context).splashColor,
            onTap: () {
              onTap(index);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: currentIndex == index ? Colors.black : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              // width: 70,
              // height: 60,
              child: Column(
                children: [
                  icon,
                  const Gap(5),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: currentIndex == index ? Colors.black : Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
