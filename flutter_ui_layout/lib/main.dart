
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rangkuman Widget Flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rangkuman Widget Flutter"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Column Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ColumnPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Row Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RowPage()),
              );
            },
          ),
          ListTile(
            title: const Text("ListView Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListViewPage()),
              );
            },
          ),
          ListTile(
            title: const Text("GridView Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GridViewPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Stack Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StackPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Padding Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PaddingPage()),
              );
            },
          ),
          ListTile(
            title: const Text("AspectRatio Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AspectRatioPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Center Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CenterPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Expanded Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExpandedPage()),
              );
            },
          ),
          ListTile(
            title: const Text("SizedBox Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SizedBoxPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Wrap Example"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WrapPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Halaman untuk Column
class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Example"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Text(
              "Stylish Chair",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Rp. 350.000",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF9A9390),
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman untuk Row
class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Example"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            const Text(
              "Detail",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.share, size: 32),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman untuk ListView
class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Example"),
      ),
      body: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            SizedBox(width: 100, child: DecoratedBox(decoration: BoxDecoration(color: Colors.red))),
            SizedBox(width: 100, child: DecoratedBox(decoration: BoxDecoration(color: Colors.green))),
            SizedBox(width: 100, child: DecoratedBox(decoration: BoxDecoration(color: Colors.blue))),
          ],
        ),
      ),
    );
  }
}

// Halaman untuk GridView
class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Example"),
      ),
      body: SizedBox(
        height: 200,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(5),
              child: Center(child: Text((index + 1).toString())),
            );
          },
        ),
      ),
    );
  }
}

// Halaman untuk Stack
class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(Icons.shopping_cart, size: 50),
            Positioned(
              top: -4,
              right: -4,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman untuk Padding
class PaddingPage extends StatelessWidget {
  const PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding Example"),
      ),
      body: Container(
        height: 500,
        width: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all()),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 30, bottom: 40),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman untuk AspectRatio
class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AspectRatio Example"),
      ),
      body: const AspectRatio(
        aspectRatio: 180 / 240,
        child: DecoratedBox(decoration: BoxDecoration(color: Colors.red)),
      ),
    );
  }
}

// Halaman untuk Center
class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Add To Cart"),
        ),
      ),
    );
  }
}

// Halaman untuk Expanded
class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Example"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: const Row(
          children: [
            Icon(Icons.arrow_back_ios),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("List checklist", style: TextStyle(fontSize: 16)),
              ),
            ),
            Icon(Icons.check, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

// Halaman untuk SizedBox
class SizedBoxPage extends StatelessWidget {
  const SizedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizedBox Example"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Size", style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text("Height 120cm", style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 2),
            Text("Width 80cm", style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

// Halaman untuk Wrap
class WrapPage extends StatelessWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          spacing: 20,
          runSpacing: 10,
          children: List.generate(12, (index) {
            return Container(
              width: 45,
              height: 45,
              color: Colors.primaries[index % Colors.primaries.length],
            );
          }),
        ),
      ),
    );
  }
}
