import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../model/repository.dart';
import '../../../../widget/pagination/widget/pagination_widget.dart';
import '../../../settings/views/bottom_sheet_settings.dart';
import '../../../../../core/constants/app_const.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_insets.dart';
import '../../../../../core/views/widgets/universal/page_body.dart';
import '../../controllers/home_page_controller.dart';

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
  late final TrackingScrollController _scrollController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isOpen = false;
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
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final TextStyle medium = textTheme.headlineMedium!;

    final MediaQueryData media = MediaQuery.of(context);
    final double topPadding = media.padding.top + kToolbarHeight + AppInsets.m;
    final double bottomPadding =
        media.padding.bottom + kBottomNavigationBarHeight;

    final bool isNarrow = media.size.width < AppInsets.phoneWidthBreakpoint;
    final double sideMargin = isNarrow ? 0 : AppInsets.l;

    final state = ref.watch(homeScreenProvider);
    final model = ref.read(homeScreenProvider.notifier);
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        model.fetchNextBatch();
      }
    });
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(AppConst.appName),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(AppIcons.sort))
        ],
      ),

      // This annotated region will change the Android system navigation bar to
      // a theme color, matching active theme mode and FlexColorScheme theme.
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: PageBody(
          child:
              CustomScrollView(controller: _scrollController, slivers: <Widget>[
            // SliverAppBar(
            //   leading: const SizedBox.shrink(),
            //   backgroundColor: Colors.transparent,
            //   flexibleSpace:  Container(),
            //   expandedHeight: 200,
            // ),
            PaginationItemsList(
              state: state,
              model: model,
              child: (value, isSearching) => PostItemsListBuilder(
                items: value as List<Repositoriey>,
                model: model,
                isSearch: isSearching,
              ),
            ),
            NoMoreItems(
              state: state,
              model: model,
            ),
            OnGoingBottomWidget(
              state: state,
            ),
          ]),
          // child: ListView.builder(
          //   controller: scrollController,
          //   itemCount: model.listRepo.length,
          //   padding: EdgeInsets.fromLTRB(
          //     sideMargin,
          //     topPadding,
          //     sideMargin,
          //     bottomPadding,
          //   ),
          //   itemBuilder: (context, index) {
          //     final Repositoriey item = model.listRepo[index];
          //     return ListTile(
          //       title: Text(item.fullName),
          //       subtitle: Text(item.description ?? ''),
          //     );
          //   },
          // ),
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

class PostItemsListBuilder extends StatelessWidget {
  const PostItemsListBuilder(
      {Key? key,
      required this.items,
      required this.model,
      this.isSearch = false})
      : super(key: key);

  final List<Repositoriey> items;
  final HomeScreenController model;
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var data = items[index];
          return ListTile(
            title: Text(data.fullName),
            subtitle: Text(data.description ?? ''),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
