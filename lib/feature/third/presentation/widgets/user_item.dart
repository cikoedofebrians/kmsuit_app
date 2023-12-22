import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmsuit_app/common/theme/app_colors.dart';
import 'package:kmsuit_app/feature/second/bloc/second_bloc.dart';
import 'package:kmsuit_app/feature/third/domain/entity/user_entity.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});

  final UserEntity user;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context
            .read<SecondBloc>()
            .add(ChangeSelectedUserEvent("${user.firstName} ${user.lastName}"));

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.primaryColor,
            content: Text(
              "Success selecting ${user.firstName} ${user.lastName}",
              style: const TextStyle(
                  color: AppColors.backgroundColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xFFE2E3E4)))),
        child: Row(children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: CachedNetworkImageProvider(
              user.avatar,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${user.firstName} ${user.lastName}",
                style: const TextStyle(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                user.email,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryTextColor,
                  fontSize: 10,
                ),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
