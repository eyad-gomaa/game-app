import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/logo_and_text_button.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_cubit.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/change_language_button_sheet.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/delete_account_bottom_sheet.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/invite_friend_bottom_sheet.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/logout_bottom_sheet.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/notifications_settings_bottom_sheet.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/privacy_settings_bottom_sheet.dart';
import 'package:zone_game_app/generated/l10n.dart';

class SettingsButtons extends StatelessWidget {
  const SettingsButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    Gap gap = Gap(16.h);
    LocalizationCubit localizationCubit =
        BlocProvider.of<LocalizationCubit>(context);
    return Column(
      children: [
        Gap(34.h),
        LogoAndTextButton(
          icon: IconManager.edit,
          text: names.editMyData,
          onTap: () {
            context.pushNamed(RouterPath.editMyDataView);
          },
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.language,
          text: names.appLanguage,
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) => const ChangeLanguageButtomSheet(),
            );
          },
          suffix: Text(localizationCubit.appLanguage!,
              style: TextStyleManager.style16RegWhite),
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.lock,
          text: names.changePassword,
          onTap: () {
            context.pushNamed(RouterPath.changePasswordView);
          },
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.key,
          text: names.privacySettings,
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) => const PrivacySettingsBottomSheet(),
            );
          },
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.notificationOutlined,
          text: names.notifications,
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) => const NotificationsSettingsBottomSheet(),
            );
          },
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.addUser,
          text: names.inviteFriends,
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) => const InviteFriendBottomSheet(),
            );
          },
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.terms,
          text: names.termsAndConditions,
          onTap: () {},
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.privacy,
          text: names.privacyPolicies,
          onTap: () {},
        ),
        gap,
        LogoAndTextButton(
          icon: IconManager.logout,
          text: names.logout,
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) => const LogOutBottomSheet(),
            );
          },
        ),
        const Gap(32),
        LogoAndTextButton(
          icon: IconManager.deleteAccount,
          text: names.deleteAccount,
          color: Colors.red,
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) => const DeleteAccountBottomSheet(),
            );
          },
        ),
        const Gap(32),
      ],
    );
  }
}
