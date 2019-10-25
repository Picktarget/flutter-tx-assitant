import 'package:flutter/material.dart';

class Goods extends StatefulWidget {
  Goods({Key key}) : super(key: key);

  @override
  _GoodsState createState() => _GoodsState();
}

class _GoodsState extends State<Goods> {
  final goodsTitle = SizedBox(
      width: double.infinity,
      height: 40.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: ShapeDecoration(
            shape: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xFFE4E4E4),
                    style: BorderStyle.solid,
                    width: 1))),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
              '商品名称',
              style: TextStyle(color: Color(0xFF8C8C8C), fontSize: 14.0),
              textAlign: TextAlign.start,
            )),
            Expanded(
                child: Text(
              '现价',
              style: TextStyle(color: Color(0xFF8C8C8C), fontSize: 14.0),
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              '最低',
              style: TextStyle(color: Color(0xFF8C8C8C), fontSize: 14.0),
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              '最高',
              style: TextStyle(color: Color(0xFF8C8C8C), fontSize: 14.0),
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ));
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['商品1', '商品2', '商品3', '商品4'];
    return Scaffold(
        body: Column(
      children: <Widget>[
        goodsTitle,
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTapDown: (TapDownDetails details) {
                    print("parent tapdown = ${DateTime.now()}");
                  },
                  onTap: () {
                    print("Container clicked $index");
                  },
                  child: Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('${entries[index]}',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Color(0xFF595959))),
                        ),
                        Expanded(
                          child: Text('1235.5543',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color(0xFF595959))),
                        ),
                        Expanded(
                          child: Text('1235.5543',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color(0xFF595959))),
                        ),
                        Expanded(
                          child: Text('1235.5543',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color(0xFF595959))),
                        ),
                      ],
                    ),
                  ));
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        )
      ],
    ));
  }
}
