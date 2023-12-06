import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: CommentAssign()),
  );
}

class CommentAssign extends StatelessWidget {
  const CommentAssign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 172, 172),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.live_tv_rounded),
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Text("Following"),
              SizedBox(
                width: 17,
              ),
              Text(
                "For You",
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
        actions: const [Icon(Icons.search_rounded)],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(),
                ),
                Expanded(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 55,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyBold.profile,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 55,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyBold.heart,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 55,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 55,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border_sharp,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 55,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.more_horiz,
                              size: 30,
                              color: Colors.white,
                            ),
                            color: Colors.black,
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: 500,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("680"),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("Comments")
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 7,
                                            child: SizedBox(
                                              height: 300,
                                              child: ListView(
                                                children: [
                                                  ListTile(
                                                    leading: const CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'assets/bakar.jpg'),
                                                    ),
                                                    title: const Text(
                                                        "Abukar Hassan"),
                                                    subtitle: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Text(
                                                              "waaw waa arin layaab leh"),
                                                        ),
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Column(
                                                            children: [
                                                              Text("1h  ago"),
                                                              SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text("View Reply")
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    trailing: const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.favorite,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ListTile(
                                                    leading: const CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'assets/in hassan.jpg'),
                                                    ),
                                                    title: const Text(
                                                        "Isse Hassan"),
                                                    subtitle: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Text(
                                                              "waa sheeka kale arin kaan"),
                                                        ),
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Column(
                                                            children: [
                                                              Text("2h ago"),
                                                              SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text("View Reply")
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    trailing: const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.favorite,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ListTile(
                                                    leading: const CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'assets/in hassan.jpg'),
                                                    ),
                                                    title: const Text(
                                                        "Daud Hassan"),
                                                    subtitle: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Text(
                                                              "waa arin ka doodid u baahan"),
                                                        ),
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Column(
                                                            children: [
                                                              Text("8h  ago"),
                                                              SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text("View Reply")
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    trailing: const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.favorite,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ListTile(
                                                    leading: const CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'assets/bakar.jpg'),
                                                    ),
                                                    title: const Text(
                                                        "Mohamed Hassan"),
                                                    subtitle: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Text(
                                                              "war hooy ka joog dhiqaa lugaha laguu gelinooyaa"),
                                                        ),
                                                        // ignore: avoid_unnecessary_containers
                                                        Container(
                                                          child: const Column(
                                                            children: [
                                                              Text("3h ago"),
                                                              SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text("View Reply")
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    trailing: const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.favorite,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 100,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            child: const Text(
                                                              "😅",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          // ignore: avoid_unnecessary_containers
                                                          child: Container(
                                                            child: const Text(
                                                              "😂",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          // ignore: avoid_unnecessary_containers
                                                          child: Container(
                                                            child: const Text(
                                                              "🤣",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          // ignore: avoid_unnecessary_containers
                                                          child: Container(
                                                            child: const Text(
                                                              "🤥",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          // ignore: avoid_unnecessary_containers
                                                          child: Container(
                                                            child: const Text(
                                                              "😓",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          // ignore: avoid_unnecessary_containers
                                                          child: Container(
                                                            child: const Text(
                                                              "😉",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            child: const Text(
                                                              "😁",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            child: const Text(
                                                              "💕",
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            child:
                                                                const CircleAvatar(
                                                              backgroundImage:
                                                                  AssetImage(
                                                                      'assets/hassan.jpg'),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 5,
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .grey[300],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25)),
                                                            child:
                                                                TextFormField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .text,
                                                              decoration:
                                                                  const InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            20),
                                                                hintText:
                                                                    "Add Comment",
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 200,
                        )
                      ],
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
}
