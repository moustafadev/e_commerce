import 'package:conditional_builder/conditional_builder.dart';
import 'package:e_commerce/core/view_model/user_view_model.dart';
import 'package:e_commerce/shared/constants/constants.dart';
import 'package:e_commerce/shared/style/dimensions.dart';
import 'package:e_commerce/shared/style/icon_broken.dart';
import 'package:e_commerce/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserViewModel>(
      init: UserViewModel(),
      builder: (controller) => ConditionalBuilder(
        condition: controller.isProfileLoading,
        builder: (context) => builderItem(context, controller),
        fallback: (context) => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget builderItem(context, controller) => Padding(
        padding: padding(context),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage:
                      NetworkImage('${controller.userModel!.image}'),
                ),
                wSizedBox3,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: CustomText(
                        text: '${controller.userModel!.name}',
                        fontSize: 26.0,
                        fontFamily: 'DisplayRegularMedium',
                        sizeMaxLines: 1,
                      ),
                    ),
                    hSizedBox1,
                    CustomText(
                      text: '${controller.userModel!.email}',
                      fontSize: 14.0,
                      fontFamily: 'DisplayRegular',
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Edit-Profile.png'),
                      wSizedBox2,
                      CustomText(
                        text: 'Edit Profile',
                        fontSize: 18,
                        fontFamily: 'DisplayRegular',
                      ),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Location.png'),
                      wSizedBox2,
                      CustomText(
                        text: 'Shipping Address',
                        fontSize: 18,
                        fontFamily: 'DisplayRegular',
                      ),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_History.png'),
                      wSizedBox2,
                      CustomText(
                        text: 'Order History',
                        fontSize: 18,
                        fontFamily: 'DisplayRegular',
                      ),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Payment.png'),
                      wSizedBox2,
                      CustomText(
                        text: 'Cards',
                        fontSize: 18,
                        fontFamily: 'DisplayRegular',
                      ),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  Row(
                    children: [
                      Image.asset('$urlImage/Icon_Alert.png'),
                      wSizedBox2,
                      CustomText(
                        text: 'Notifications',
                        fontSize: 18,
                        fontFamily: 'DisplayRegular',
                      ),
                      Spacer(),
                      Icon(IconBroken.Arrow___Right_2),
                    ],
                  ),
                  hSizedBox3,
                  InkWell(
                    onTap: () {
                      controller.sinOut();
                    },
                    child: Row(
                      children: [
                        Image.asset('$urlImage/Icon_Exit.png'),
                        wSizedBox2,
                        CustomText(
                          text: 'Log Out',
                          fontSize: 18,
                          fontFamily: 'DisplayRegular',
                        ),
                        Spacer(),
                        Icon(IconBroken.Arrow___Right_2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
