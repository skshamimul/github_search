import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/app/extensions.dart';
import 'package:intl/intl.dart';

import '../../../../../model/repository.dart';
import '../../../../widget/pagination/widget/pagination_widget.dart';
import '../../../settings/controllers/settings.dart';
import '../../../settings/views/bottom_sheet_settings.dart';
import '../../../../../core/constants/app_const.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/views/widgets/universal/page_body.dart';
import '../../controllers/home_page_controller.dart';

/// Home page showing with a simple Riverpod count and theme controls.
///
/// Also displays the active
@RoutePage<String>()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<HomeScreen> {
  late final ScrollController _scrollController;
  late final ScrollController _scrollController2;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isOpen = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController2 = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    // final TextStyle medium = textTheme.headlineMedium!;

    // final MediaQueryData media = MediaQuery.of(context);
    // final double topPadding = media.padding.top + kToolbarHeight + AppInsets.m;
    // final double bottomPadding =
    //     media.padding.bottom + kBottomNavigationBarHeight;

    // final bool isNarrow = media.size.width < AppInsets.phoneWidthBreakpoint;
    // final double sideMargin = isNarrow ? 0 : AppInsets.l;

    final state = ref.watch(homeScreenProvider);
    final model = ref.read(homeScreenProvider.notifier);
    _scrollController.addListener(() {
      final double maxScroll = _scrollController.position.maxScrollExtent;
      final double currentScroll = _scrollController.position.pixels;
      final double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        model.fetchNextBatch();
      }
    });

    final String _sort = ref.watch(Settings.appRepositrySortProvider);

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: PageBody(
          controller: _scrollController2,
          child:
              CustomScrollView(controller: _scrollController, slivers: <Widget>[
            SliverAppBar(
              leading: const SizedBox.shrink(),
              pinned: true,
              floating: true,
              bottom: AppBar(
                automaticallyImplyLeading: false,
                title: const Text(AppConst.appName),
                actions: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: RepaintBoundary(
                        child: PopupMenuButton<String>(
                          onSelected: (value) {
                            ref
                                .read(
                                    Settings.appRepositrySortProvider.notifier)
                                .set(value);
                          },
                          position: PopupMenuPosition.under,
                          itemBuilder: (BuildContext context) {
                            Color selected = theme.colorScheme.secondary;
                            return <PopupMenuItem<String>>[
                              PopupMenuItem<String>(
                                  value: "best",
                                  child: Text(
                                    'Best Match',
                                    style: textTheme.labelMedium!.copyWith(
                                        color:
                                            _sort == 'best' ? selected : null),
                                  )),
                              PopupMenuItem<String>(
                                  value: 'updated',
                                  child: Text(
                                    'Updated Date',
                                    style: textTheme.labelMedium!.copyWith(
                                        color: _sort == 'updated'
                                            ? selected
                                            : null),
                                  )),
                              PopupMenuItem<String>(
                                  value: 'stars',
                                  child: Text(
                                    'Stars',
                                    style: textTheme.labelMedium!.copyWith(
                                        color:
                                            _sort == 'stars' ? selected : null),
                                  )),
                            ];
                          },
                          icon: const Icon(AppIcons.sort),
                        ),
                      ))
                ],
              ),
              expandedHeight: 50,
            ),
            PaginationItemsList(
              state: state,
              model: model,
              child: () => PostItemsListBuilder(
                model: model,
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
  const PostItemsListBuilder({
    Key? key,
    required this.model,
  }) : super(key: key);

  final HomeScreenController model;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return StreamBuilder<List<dynamic>>(
        stream: model.loadSteam(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final Repositoriey data =
                      snapshot.data![index] as Repositoriey;
                  String des = data.description ?? '';
                  String title = data.fullName;
                  String updateDateAt =
                      DateFormat('dd/MM/yy').format(data.updatedAt!);
                  String updateTimeAt = DateFormat.jm().format(data.updatedAt!);
                  return Padding(
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 8),
                    child: Card(
                      child: ListTile(
                        onTap: () async {
                          '______________Start Data_____'.log;
                          '${data.id} ${data.isarId}'.log;
                          '______________End_____'.log;
                          await model.navToDetailsScreen(data.id);
                        },
                        title: Text(
                          title.length > 35
                              ? title.substring(0, 35) + '...'
                              : title,
                          style: textTheme.titleMedium!
                              .copyWith(color: theme.colorScheme.primary),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              des.length > 80
                                  ? des.substring(0, 80) + '...'
                                  : des,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 4),
                                  child: Text.rich(TextSpan(
                                      text: 'Updated At : ',
                                      style: textTheme.bodySmall!,
                                      children: [
                                        TextSpan(
                                            text:
                                                '$updateDateAt - $updateTimeAt')
                                      ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 4),
                                  child: Text.rich(TextSpan(
                                      text: '** ',
                                      style: textTheme.bodySmall!,
                                      children: [
                                        TextSpan(text: '${data.watchersCount}')
                                      ])),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: snapshot.data!.length,
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Text('no More Data'),
            );
          }
        });
  }
}
