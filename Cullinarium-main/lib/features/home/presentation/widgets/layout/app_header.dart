import 'package:cullinarium/core/widgets/cards/avatar_card.dart';
import 'package:cullinarium/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                if (state is ProfileLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is ProfileError) {
                  return Text(
                    'Привет, Гость!',
                    style: theme.textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  );
                } else if (state is ProfileLoaded) {
                  final user = state.user;

                  final firstName = user.name.split(' ').first;
                  return Text(
                    'Привет, $firstName!',
                    style: theme.textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  );
                }
                return Text(
                  'Привет!',
                  style: theme.textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                );
              },
            ),
            Text(
              'Не жди, заказывай вкусную еду',
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const AvatarCard(radius: 20),
      ],
    );
  }
}
