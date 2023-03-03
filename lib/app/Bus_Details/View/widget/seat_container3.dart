import 'package:flutter/material.dart';

class ThreeSeatContainer extends StatelessWidget {
  const ThreeSeatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Icon(
            Icons.chair,
            size: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.chair,
                      color: Colors.red,
                      size: 40,
                    );
                  },
                ),
              ),
              SizedBox(
                // margin: const EdgeInsets.all(20),
                width: 200,
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 24,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.chair,
                      color: Colors.red,
                      size: 40,
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
