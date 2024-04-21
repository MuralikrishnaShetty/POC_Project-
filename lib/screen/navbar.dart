import 'package:demopoc/screen/first_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget{

  const NavBar({super.key});
  @override
  State<NavBar> createState() {
    return _NavBarState();
  }
  
}
class _NavBarState extends State<NavBar>{
  int _selectIndex=0;

  void _selectPage(index){
    setState(() {
      _selectIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget activepage=FirstScreen();
    return Scaffold(
      body: activepage ,
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon:Image.asset('assets/images/home.png'),label:'Home' ),
        BottomNavigationBarItem(icon:Image.asset('assets/images/invoice.png'),label:'Invoice' ),
        BottomNavigationBarItem(icon:Image.asset('assets/images/addButton.png'),label:'Add New' ),
        BottomNavigationBarItem(icon:Image.asset('assets/images/help.png'),label:'Help',tooltip: 'help'),

      ],
      selectedItemColor:const  Color.fromRGBO(11, 34, 101, 1),
      onTap: _selectPage,
      currentIndex: _selectIndex,
       type: BottomNavigationBarType.fixed,


      ),
    );
  }

}