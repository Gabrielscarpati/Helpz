import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/hubPrestador/views/viewHubPrestadorHeader.dart';
import '../../../../util/colors/colorGradient.dart';
import '../../../../util/colors/colors.dart';
import '../../payment/viewPayment.dart';
import 'hubPrestadorDadosPrestador.dart';

class ViewHubBodyPrestador extends StatefulWidget {
  ViewHubBodyPrestador({Key? key,});


  _ViewHubBodyPrestadorState createState() => _ViewHubBodyPrestadorState();
}

class _ViewHubBodyPrestadorState extends State<ViewHubBodyPrestador>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  int _selectedIndex = 0; //New

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecorationGradient(context),
        child: Column(
          children: [
            ViewHubPrestadorHeader(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.blue.shade900,
                        spreadRadius: 1)
                  ],
                  color: BackgroundColorGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12, left: 12, top: 0),
                  child: SingleChildScrollView(
                    child: HubPrestadorDadosPrestador(
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ViewPayment(),
    ];

    return Scaffold(
      /* bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Compras e Produtos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, //New
        onTap: _onItemTapped,
      ),
       body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),*/
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecorationGradient(context),
        child: Column(
          children: [
            ViewHubPrestadorHeader(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.blue.shade900,
                        spreadRadius: 1)
                  ],
                  color: BackgroundColorGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12, left: 12, top: 0),
                  child: SingleChildScrollView(
                    child: HubPrestadorDadosPrestador(

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
