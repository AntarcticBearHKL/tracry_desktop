import 'package:flutter/material.dart';
import 'package:menu_bar/menu_bar.dart';
import 'package:sidebarx/sidebarx.dart';
import '../algorithm/getKline.dart';
import 'dart:io';

class TranPage extends StatefulWidget {
  @override
  _TranPage createState() => _TranPage();
}

class _TranPage extends State<TranPage> {
  @override
  Widget build(BuildContext context) {
    return MenuBarWidget(
      barStyle: MenuStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black)
      ),
      barButtons: [
        BarButton(
          text: const Text(
            'File', 
            style: TextStyle(color: Colors.white)
          ),
          submenu: SubMenu(
              menuItems: [
                  MenuButton(
                      text: const Text('Save'),
                      onTap: () {
                        dayK();
                      },
                      icon: const Icon(Icons.save),
                      shortcutText: 'Ctrl+S',
                  ),
                  const MenuDivider(),
                  MenuButton(
                      text: const Text('Exit'),
                      onTap: () {
                        exit(0);
                      },
                      icon: const Icon(Icons.exit_to_app),
                      shortcutText: 'Ctrl+Q',
                  ),
              ],
          ),
        ),
        BarButton(
            text: const Text(
              'Help', 
              style: TextStyle(color: Colors.white)),
            submenu: SubMenu(
                menuItems: [
                    MenuButton(
                      text: const Text('View License'),
                      onTap: () {},
                    ),
                    MenuButton(
                      text: const Text('About'),
                      onTap: () {},
                      icon: const Icon(Icons.info),
                    ),
                ],
            ),
          ),
      ],
      child: Scaffold(
        body: Row(
          children:[
            SidebarX(
              controller: SidebarXController(selectedIndex: 0),
              items: const [
                SidebarXItem(icon: Icons.home, label: 'Home'),
                SidebarXItem(icon: Icons.search, label: 'Search'),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey,
                child: const Text('hello'),
              )      
            ),
          ]
        )
      )
    );  
  }
}