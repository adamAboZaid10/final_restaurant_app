import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/utlis/assets_data.dart';
import '../../../../../core/utlis/styles.dart';

class CustomItemGridView extends StatelessWidget {
  const CustomItemGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .50,
      height: MediaQuery.of(context).size.height * .37,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                AssetsData.kPizzaLogo,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * .15,
                height: MediaQuery.of(context).size.height * .15,
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: kButtonYelloColor,
                        child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          '4.7',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: kButtonYelloColor,
                        ),
                        Expanded(
                          child: Text(
                            '(99+)',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 10, color: kTextEmAndPassColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'this is a pizza',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            ' pizza',
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.normal, color: kRememberColor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 27,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: 29,
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  color: kButtonYelloColor,
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
