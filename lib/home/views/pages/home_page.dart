import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../bottomsheet/views/bottom_sheet_settings.dart';
import '../../../core/constants/app_const.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/constants/app_insets.dart';
import '../../../core/views/widgets/universal/page_body.dart';

/// Home page showing with a simple Riverpod count and theme controls.
///
/// Also displays the active
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  static const String route = '/home';

  @override
  ConsumerState<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<HomePage> {
  late final ScrollController scrollController;
  final GlobalKey<ScaffoldState>  _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isOpen = false;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController(
      keepScrollOffset: true,
      debugLabel: 'pageBodyScroll',
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final TextStyle medium = textTheme.headlineMedium!;

    final MediaQueryData media = MediaQuery.of(context);
    final double topPadding = media.padding.top + kToolbarHeight + AppInsets.m;
    final double bottomPadding =
        media.padding.bottom + kBottomNavigationBarHeight;

    final bool isNarrow = media.size.width < AppInsets.phoneWidthBreakpoint;
    final double sideMargin = isNarrow ? 0 : AppInsets.l;

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text(AppConst.appName),
        actions: const <Widget>[],
      ),

      // This annotated region will change the Android system navigation bar to
      // a theme color, matching active theme mode and FlexColorScheme theme.
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: PageBody(
          controller: scrollController,
          child: ListView(
            controller: scrollController,
            padding: EdgeInsets.fromLTRB(
              sideMargin,
              topPadding,
              sideMargin,
              bottomPadding,
            ),
            children: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(AppIcons.sort))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          if (_isOpen) {
            Navigator.pop(context);
          } else {
            _scaffoldKey.currentState!.showBottomSheet<void>(
              (BuildContext context) => const BottomSheetSettings(),
            );
          }
          setState(() {
            _isOpen = !_isOpen;
          });
        },
        tooltip: 'settings',
        child: Icon(_isOpen ? AppIcons.close : AppIcons.settings),
      ),
    );
  }
}
