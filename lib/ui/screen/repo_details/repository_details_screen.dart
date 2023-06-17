import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/ui/widget/pagination/widget/pagination_widget.dart';

import '../../../core/constants/app_const.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/views/widgets/universal/page_body.dart';
import '../home/controllers/home_page_controller.dart';

/// Home page showing with a simple Riverpod count and theme controls.
///
/// Also displays the active
class RepositoryDetailsScreen extends ConsumerStatefulWidget {
  const RepositoryDetailsScreen({super.key});

  static const String route = '/home';

  @override
  ConsumerState<RepositoryDetailsScreen> createState() =>
      _RepositoryDetailsScreenState();
}

class _RepositoryDetailsScreenState
    extends ConsumerState<RepositoryDetailsScreen> {
  late final TrackingScrollController _scrollController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _scrollController = TrackingScrollController(
      keepScrollOffset: true,
      debugLabel: 'pageBodyScroll',
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final TextStyle medium = textTheme.headlineMedium!;

    // final MediaQueryData media = MediaQuery.of(context);
    // final double topPadding = media.padding.top + kToolbarHeight + AppInsets.m;
    // final double bottomPadding =
    //     media.padding.bottom + kBottomNavigationBarHeight;

    // final bool isNarrow = media.size.width < AppInsets.phoneWidthBreakpoint;
    // final double sideMargin = isNarrow ? 0 : AppInsets.l;

    final state = ref.watch(homeScreenProvider);
    final model = ref.read(homeScreenProvider.notifier);

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: PageBody(
          child:
              CustomScrollView(controller: _scrollController, slivers: <Widget>[
            SliverAppBar(
              leading: const SizedBox.shrink(),
              pinned: true,
              floating: true,
              bottom: AppBar(
                title: const Text(AppConst.appName),
                actions: <Widget>[
                  IconButton(onPressed: () {}, icon: const Icon(AppIcons.sort))
                ],
              ),
              expandedHeight: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
