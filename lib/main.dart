import 'package:flutter/material.dart';

void main() {
  runApp(
      // Center(
      //   child: Text(
      //     'Hello, World!',
      //     textDirection: TextDirection.ltr,
      //   ),
      // ),
      MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var png;
    return MaterialApp(
      home: Scaffold(
        //Scaffoldの中の
        appBar: AppBar(
          //appBarプロパティ(場所みたいなこと)にAppBar()ウィジェットを置く
          title: Text(
            'こんぶ', //文字列はシングルクォーテーション''
            style: TextStyle(
              //文字のスタイルを変更
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //↑カラムに対してPaddingをする
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            //↑アイコン
            backgroundImage: NetworkImage(
                'https://assets.st-note.com/production/uploads/images/37339503/picture_pc_46a3bbb12b45b56f50edd5ca17efcfd4.png?width=2000&height=2000&fit=bounds&format=jpg&quality=85'),
          ),
          Column(
            //↑ウィジェットを縦に並べる時
            crossAxisAlignment: CrossAxisAlignment.start,
            //↑左揃えにする
            children: [
              Row(
                children: [
                  //ウィジェットを横に並べる時
                  Text('こんぶ @ flutter大学'),
                  SizedBox(width: 8),
                  Text('2022/05/05'),
                ],
              ),
              SizedBox(height: 4),
              Text('最高でした。'),
              IconButton(
                onPressed: () {}, //ボタンを押したときに実行する内容を書く。
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
