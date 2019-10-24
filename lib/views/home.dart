import 'package:flutter/material.dart';
import 'package:tx_assitant/views/goods.dart';
import 'package:tx_assitant/views/my.dart';
import 'package:tx_assitant/views/tx-records.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  List<Widget> pageList = List();
  static const List<String> tabName = <String>['商品详情', '交易记录', '个人中心'];
  String _tabName = '';

  @override
  void initState() {
    // pageList.add(Goods());
    // pageList.add(TxRecords());
    // pageList.add(My());
    pageList..add(Goods())..add(TxRecords())..add(My());
    _tabName = tabName[_selectedIndex];
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _tabName = tabName[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(54.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF9254DE),
          centerTitle: true,
          title: Text(_tabName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Center(
        child: pageList[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('商品'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('交易记录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('我的'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF9254DE),
        unselectedItemColor: Color(0xFF8c8c8c),
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        onTap: _onItemTapped,
      ),
    );
  }
}
