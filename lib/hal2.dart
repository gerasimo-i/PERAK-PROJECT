import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.undo),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help_outline, size: 24),
            onPressed: () {
              // Aksi ketika ikon Help diklik
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, size: 24),
            onPressed: () {
              // Aksi ketika ikon Setting diklik
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff2f0f0f),
                    borderRadius: BorderRadius.circular(70.5),
                  ),
                ),
                ClipOval(
                  child: Image.network(
                    'https://tse2.mm.bing.net/th?id=OIP.Ql1wimJac6i6_c86c0n1ZQHaGZ&pid=Api&P=0&h=220s',
                    width: 130,
                    height: 130,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'My Watchlist',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Stack(
            children: <Widget>[
              Container(
                width: 106,
                height: 137,
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10, // Ganti jumlah item sesuai kebutuhan
              itemBuilder: (context, index) {
                return GridItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Image.network(
        // Ganti dengan URL gambar yang diinginkan
        'https://example.com/image.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
