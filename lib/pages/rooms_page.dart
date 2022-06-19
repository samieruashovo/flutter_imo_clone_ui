import 'package:flutter/material.dart';

class RoomsPage extends StatelessWidget {
  const RoomsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.060,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  child: const Text(
                    "Room",
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  child: const Text("Explore"),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 120,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bar_chart_outlined)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.person_outline)),
            ],
          ),
        ),
        Container(
          color: Colors.grey[200],
          height: MediaQuery.of(context).size.height * 0.83,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3)),
                  height: MediaQuery.of(context).size.height * 0.055,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Create my room",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}
