import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';

class LandingHeader extends StatelessWidget {
  const LandingHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            width: size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: kPrimeryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Text(
              "Hi Sobat",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      color: Colors.black.withOpacity(0.23))
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Device",
                        hintStyle:
                            TextStyle(color: kPrimeryColor.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  )),
                  Icon(Icons.search)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
