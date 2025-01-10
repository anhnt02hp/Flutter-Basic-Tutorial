import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}


class Item {
  final String urlImage;
  final String title;

  Item({required this.urlImage, required this.title});
}


class Screen1 extends StatelessWidget{
  final items = <Item>[
    Item(
      title: 'Image 1',
      urlImage: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    ),
    Item(
      title: 'Image 2',
      urlImage: "https://img.freepik.com/premium-photo/super-zoom-macro-shot-vibrant-flower-showcasing-rich-colors-exquisite-detail_493325-12162.jpg",
    ),
    Item(
      title: 'Image 3',
      urlImage: "https://img.freepik.com/premium-photo/photo-closeup-passionflower_1298141-7879.jpg",
    ),
    Item(
      title: 'Image 4',
      urlImage: "https://img.freepik.com/premium-photo/purple-flower-with-blue-red-it_993236-81965.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hero Animation'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: items.length,
            itemBuilder: (context, index){
              final item = items[index];
          
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Screen2(item: item)),
                  );
                },
                child: Row(
                  children: [
                    Hero(
                      tag: item,
                      child: buildImage(item.urlImage),
                    ),
                    const SizedBox(width: 16,),
                    Text(
                      'Item ${index + 1}',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
  }

  Widget buildImage(String urlImage){
    return Image.network(
      urlImage,
      fit: BoxFit.cover,
      width: 100,
      height: 100,
    );
  }
}


class Screen2 extends StatelessWidget{
  final Item item;

  const Screen2({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
        centerTitle: true,
      ),
      body: Container(
        child: Hero(
          tag: item.urlImage,
          child: buildImage(),
        ),
      ),
    );
  }

  Widget buildImage(){
    return AspectRatio(
      aspectRatio: 1,
      child: Image.network(item.urlImage, fit: BoxFit.cover,),
    );
  }
}