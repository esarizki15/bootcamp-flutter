import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Image.asset(
              'assets/eye.png',
              height: 20,
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "Sentinel",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/bell.png',
              height: 20,
            ),
          ),
          Container(
            child: Image.asset(
              'assets/gearSix.png',
              height: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget user() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("Halo"),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              "Adang Susanyo",
              style: TextStyle(fontSize: 23),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardMenu() {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: Colors.grey.shade300, width: 0.5),
        ),
        child: InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/deviceMobile.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Pulsa"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/lightning.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Listrik"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/drop.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("PDAM"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/gameController.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Game"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/shieldPlus.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("BPJS"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/globe.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Internet"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/houseLine.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Iuran"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF2E9),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/squaresFour.png',
                                height: 24,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Semua"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> list = [
    "https://images.saymedia-content.com/.image/t_share/MTc0Mzg2NDA5MDk4OTc4OTUw/animes-like-ansatsu-kyoushitsu.png",
    'https://i.pinimg.com/originals/5a/21/9f/5a219f7764a00e071c68af2fe68a1e23.jpg',
    'https://4.bp.blogspot.com/-FWsh_5SKMe0/Why9AFBVqzI/AAAAAAAAAzs/xuEmjDKaxFsf594CXW_b_EIzY_hQ6ycpwCLcBGAs/s1600/Bungou%2BStray%2BDogs.jpg'
  ];
  Widget promo() {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Text(
              "Promo Hari Ini",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (dynamic imgUrl in list)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        child: Image.network(imgUrl),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rekomendasiGrup() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Rekomendasi Grup",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                      color: Color(0xFFFFD803),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          for (int i = 0; i < list.length; i++)
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.grey.shade300, width: 0.5),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 99,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(8.0),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(list[i]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "Grup Laskar Pemuda Cicalengka",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                              'assets/users.png',
                                              height: 14,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Text(
                                              "256 Anggota",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                              'assets/newspaper.png',
                                              height: 14,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Text(
                                              "6 Kiriman Baru",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              header(),
              user(),
              cardMenu(),
              promo(),
              rekomendasiGrup(),
            ],
          ),
        ),
      ),
    );
  }
}
