import 'package:auto_route/auto_route.dart';
import 'package:base/models/applet.dart';
import 'package:base/pages/applet_page.dart';
import 'package:base/pages/conversation_page.dart';
import 'package:base/pages/feed_page.dart';
import 'package:base/pages/mine_page.dart';
import 'package:base/providers/applet_provider.dart';
import 'package:base/providers/home_provider.dart';
import 'package:common/common.dart';
import 'package:contact/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  List<Widget> _buildScreens({
    bool enabledApplet = false,
  }) {
    return [
      ConversationPage(),
      ContactScreen(),
      if (enabledApplet) AppletPage(),
      FeedPage(),
      MinePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(
    BuildContext context, {
    required int unreadFriendApplyCount,
    required int unreadMessageCount,
    bool enabledApplet = false,
    Applet? defaultApplet,
  }) {
    return [
      PersistentBottomNavBarItem(
        contentPadding: 0,
        icon: _setupIcon(
            _buildIcon(EvaIcons.message_circle_outline, AppTheme.brandColor),
            unreadMessageCount),
        inactiveIcon: _setupIcon(
            _buildIcon(EvaIcons.message_circle_outline,
                AppTheme.lightSecondaryTextColor),
            unreadMessageCount),
        title: context.t.home.tab.conversation,
        activeColorPrimary: AppTheme.brandColor,
      ),
      PersistentBottomNavBarItem(
        icon: _setupIcon(_buildIcon(BoxIcons.bxs_contact, AppTheme.brandColor),
            unreadFriendApplyCount),
        inactiveIcon: _setupIcon(
            _buildIcon(BoxIcons.bxs_contact, AppTheme.lightSecondaryTextColor),
            unreadFriendApplyCount),
        title: context.t.home.tab.contacts,
        activeColorPrimary: AppTheme.brandColor,
      ),
      if (enabledApplet)
        PersistentBottomNavBarItem(
          icon: defaultApplet != null
              ? _buildAppletIcon(defaultApplet.icon)
              : _buildIcon(EvaIcons.compass, AppTheme.brandColor),
          inactiveIcon: defaultApplet != null
              ? _buildAppletIcon(defaultApplet.icon)
              : _buildIcon(EvaIcons.compass, AppTheme.lightSecondaryTextColor),
          title: defaultApplet?.displayName ?? context.t.home.tab.applet,
          activeColorPrimary: AppTheme.brandColor,
        ),
      PersistentBottomNavBarItem(
        icon: _buildIcon(EvaIcons.compass, AppTheme.brandColor),
        inactiveIcon: _buildIcon(
            EvaIcons.compass_outline, AppTheme.lightSecondaryTextColor),
        title: context.t.home.tab.feed,
        activeColorPrimary: AppTheme.brandColor,
      ),
      PersistentBottomNavBarItem(
        icon: _buildIcon(EvaIcons.person, AppTheme.brandColor),
        inactiveIcon: _buildIcon(
            EvaIcons.person_outline, AppTheme.lightSecondaryTextColor),
        title: context.t.home.tab.mine,
        activeColorPrimary: AppTheme.brandColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeControllerProvider.notifier);
    final contactState = ref.watch(contactControllerProvider);
    final homeState = ref.watch(homeControllerProvider);
    final appletState = ref.watch(appletControllerProvider);

    // 创建默认的导航栏
    Widget buildTabView({
      bool enabledApplet = false,
      int unreadCount = 0,
      Applet? defaultApplet,
    }) {
      return PersistentTabView(
        context,
        controller: controller.tabController,
        screens: _buildScreens(enabledApplet: enabledApplet),
        navBarStyle: NavBarStyle.style12,
        items: _navBarsItems(
          context,
          unreadFriendApplyCount: unreadCount,
          unreadMessageCount: unreadCount,
          enabledApplet: enabledApplet,
          defaultApplet: defaultApplet,
        ),
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            // Screen transition animation on change of selected tab.
            animateTabTransition: false,
            duration: Duration(milliseconds: 200),
            screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
          ),
        ),
      );
    }

    return homeState.when(
      data: (homeData) {
        return appletState.when(
          data: (appletData) {
            return buildTabView(
              enabledApplet: homeData.enabledApplet,
              unreadCount: contactState.unreadFriendApplyCount,
              defaultApplet: appletData.defaultApplet,
            );
          },
          loading: () => buildTabView(),
          error: (_, __) => buildTabView(),
        );
      },
      loading: () => buildTabView(),
      error: (_, __) => buildTabView(),
    );
  }

  Widget _buildAppletIcon(String icon) {
    return ImageUtil.networkImage(url: icon, width: 26.w, height: 26.h);
  }

  Widget _setupIcon(Widget icon, int unReadCount) {
    return Stack(
      alignment: Alignment.center,
      children: [
        icon,
        Positioned(
          top: 0,
          right: 0,
          child: Transform.translate(
            offset: const Offset(2, -2),
            child: UnreadCountView(count: unReadCount),
          ),
        ),
      ],
    );
  }

  Icon _buildIcon(IconData icon, Color color) {
    return Icon(
      icon,
      size: 24.w,
      color: color,
    );
  }
}
