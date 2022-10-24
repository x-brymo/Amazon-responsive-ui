import 'package:amazon_clone/utils/constants.dart';
import 'package:amazon_clone/utils/size_config.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 55, right: 5, left: 5, bottom: 10),
      child: Container(
        width: MySizeConfig.screenWidth! * 0.94,
        height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          border: Border.all(
            width: 0.4,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0.0, 5),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/search_1.png',
                width: MySizeConfig.iconWidth,
              ),
              SizedBox(
                width: MySizeConfig.safeBlockHorizontal! * 2,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text(
                      'Search Amazon',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )),

              // SvgPicture.asset(
              //   'assets/icons/scanicon1.svg',
              //   width: 25,
              //   // color: Colors.grey,
              // ),
              Image.asset(
                'assets/icons/scan1.png',
                width: MySizeConfig.screenWidth! * 0.06,
              ),
              SizedBox(
                width: MySizeConfig.safeBlockHorizontal! * 10,
              ),
              Image.asset(
                'assets/icons/mic1.png',
                width: MySizeConfig.screenWidth! * 0.06,
              ),
              SizedBox(
                width: MySizeConfig.safeBlockHorizontal! * 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
