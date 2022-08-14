import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 60,
          title: Row(children: [Icon(Icons.abc)]),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
          expandedHeight: 300,
          pinned: true,
          backgroundColor: Colors.green,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            'images/item1.png',
            fit: BoxFit.cover,
          )),
        ),
        SliverToBoxAdapter(
          child: Text(
              ' alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  fkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf fkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf fkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf fkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf fkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf fkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf fkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf    alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf   alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf  alskdfja;lsdkf jasl;dkf jasdl;fk jasldkfjasdlfkjasdlfkajsdlfkajslaksjfals;kdf a;sldf '),
        )
      ]),
    );
  }
}
