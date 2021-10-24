import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

List menuData = [
  {
    "img": "assets/profile-menu-0.png",
    "text": "Group Saya",
  },
  {
    "img": "assets/profile-menu-1.png",
    "text": "Jadwal Saya",
  },
  {
    "img": "assets/profile-menu-2.png",
    "text": "Setelan Akun",
  },
  {
    "img": "assets/profile-menu-3.png",
    "text": "FAQ",
  },
  {
    "img": "assets/profile-menu-4.png",
    "text": "Informasi Aplikasi",
  },
];
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
      child: Container(
        child: Column(
          children: [
            for (int i = 0; i < menuData.length; i++)
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: (i != (menuData.length - 1))
                          ? BorderSide(color: Colors.grey, width: 1)
                          : BorderSide(width: 0),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        menuData[i]["img"],
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          menuData[i]["text"],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
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
  );
}

Widget _body() {
  return SafeArea(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Text(
              "Profile",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
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
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Image.asset(
                              'assets/profile.png',
                              height: 48,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "Adang Susanyo",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Color(
                                    0xFFFFD803,
                                  ),
                                  border: Border.all(
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
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
          cardMenu(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              color: Color(
                0xFFFF7054,
              ),
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/SignOut.png',
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Keluar",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
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
    ),
  );
}

Widget _oldBody() {
  return Center(
    child: Text("ini halaman profile"),
  );
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }
}
