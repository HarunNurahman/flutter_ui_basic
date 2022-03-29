import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/img_pantai_kuta_bali_1200.jpg'),
            const SizedBox(height: 30),
            const InformationHeader(),
            const SizedBox(height: 30),
            const ActionButton(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam cursus erat sit amet elit sodales, sed laoreet neque laoreet. Phasellus at risus volutpat, efficitur felis sollicitudin, euismod nunc. Proin faucibus, velit vel ornare cursus, ligula lacus ullamcorper ex, at ullamcorper turpis leo et urna. Praesent ac pharetra ante. Nunc sollicitudin, ante et vestibulum eleifend, nibh nunc tempor dolor, ac scelerisque metus augue non est. Nullam interdum lacus est, quis faucibus nisi bibendum nec. In dapibus tincidunt velit in elementum. Mauris convallis arcu eget fringilla egestas. Suspendisse ornare non quam in fermentum.",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                      "\nEtiam leo sem, accumsan sed lacus eu, ultrices ultricies arcu. Nullam a odio convallis, laoreet enim nec, fringilla tellus. Integer dui urna, consectetur sit amet erat sed, commodo consequat nisi. Morbi porta dui id mauris venenatis, at tristique tortor laoreet. Curabitur non odio et odio scelerisque pretium. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla porta tellus non blandit mollis. Nunc rutrum quam feugiat felis maximus, non porttitor mi bibendum. Phasellus pharetra accumsan magna, quis interdum nunc blandit sit amet. Suspendisse ut lacus interdum, aliquam turpis a, dignissim risus. Vivamus cursus tellus tincidunt tellus aliquam congue.",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.justify)
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}

class InformationHeader extends StatelessWidget {
  const InformationHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Pantai Kuta',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('Bali',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
            ],
          ),
          Row(children: const <Widget>[
            Icon(Icons.favorite, color: Colors.yellow),
            Padding(
              padding: EdgeInsets.only(left: 4),
              child: Text('4.2'),
            )
          ])
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  color: Colors.blue,
                  iconSize: 24),
              const SizedBox(height: 4),
              const Text('CALL',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.directions),
                  color: Colors.blue,
                  iconSize: 24),
              const SizedBox(height: 4),
              const Text('DIRECTION',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  color: Colors.blue,
                  iconSize: 24),
              const SizedBox(height: 4),
              const Text('SHARE',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
