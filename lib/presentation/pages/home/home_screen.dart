import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf6f4ff),
        appBar: AppBar(
          backgroundColor: const Color(0xFFf6f4ff),
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1878522/pexels-photo-1878522.jpeg?auto=compress&cs=tinysrgb&h=350'),
            ),
          ),
          title: const Text(
            'Andreas',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomScrollView(
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 50,
                      width: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return index == 0
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 10.0,
                                  ),
                                  child: Container(
                                      width: 35,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFF9352f5),
                                            Color(0xFF5f5ff5),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      )),
                                )
                              : Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10.0,
                                  ),
                                  child: Container(
                                      width: 100,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 5),
                                            child: Text(index == 1
                                                ? '🏰'
                                                : index == 2
                                                    ? '🏢'
                                                    : index == 3
                                                        ? '🏡'
                                                        : '🏢'),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              index == 1
                                                  ? const Text('College')
                                                  : index == 2
                                                      ? const Text('Office')
                                                      : index == 3
                                                          ? const Text('Home')
                                                          : const Text('Work'),
                                              //color lines for each category
                                              Container(
                                                width: 13,
                                                height: 3,
                                                decoration: BoxDecoration(
                                                  color: index == 1
                                                      ? const Color(0xFF9352f5)
                                                      : index == 2
                                                          ? const Color(
                                                              0xFF5f5ff5)
                                                          : index == 3
                                                              ? const Color(
                                                                  0xFFff5f5f)
                                                              : const Color(
                                                                  0xFF5f5ff5),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                );
                        },
                      ),
                    ),
                  ),
                ])),
                SliverList(
                    delegate: SliverChildListDelegate([
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          "Communities",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      height: 100,
                      width: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              right: 10.0,
                              left: index == 0 ? 20.0 : 0.0,
                            ),
                            child: Container(
                                width: 200,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 5),
                                      child: Text(index == 1
                                          ? '🏰'
                                          : index == 2
                                              ? '🏢'
                                              : index == 3
                                                  ? '🏡'
                                                  : '🏢'),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        index == 1
                                            ? const Text('College')
                                            : index == 2
                                                ? const Text('Office')
                                                : index == 3
                                                    ? const Text('Home')
                                                    : const Text('Work'),
                                        //color lines for each category
                                        Container(
                                          width: 13,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            color: index == 1
                                                ? const Color(0xFF9352f5)
                                                : index == 2
                                                    ? const Color(0xFF5f5ff5)
                                                    : index == 3
                                                        ? const Color(
                                                            0xFFff5f5f)
                                                        : const Color(
                                                            0xFF5f5ff5),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                  ),
                ]))
              ],
            )),
      ),
    );
  }
}
