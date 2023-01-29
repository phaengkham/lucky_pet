import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lucky_phet_app/app_styles.dart';
import 'package:lucky_phet_app/sixe_config.dart';

class petDetail extends StatelessWidget {
  const petDetail({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 50,
            child: Stack(children: [
              Image.asset(
                'assets/images/baby1.png',
                height: SizeConfig.blockSizeVertical! * 60,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(42),
                      bottomRight: Radius.circular(42),
                    ),
                    color: kWhite,
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    ));
  }
}
