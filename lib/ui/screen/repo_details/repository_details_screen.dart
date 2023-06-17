import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/model/owner.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/app_const.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/views/widgets/universal/page_body.dart';
import '../../../provider.dart';
import '../home/controllers/home_page_controller.dart';
import 'repo_details_controller.dart';

/// Home page showing with a simple Riverpod count and theme controls.
///
/// Also displays the active
@RoutePage<String>()
class RepositoryDetailsScreen extends ConsumerStatefulWidget {
  final int isarId;
  const RepositoryDetailsScreen({super.key, required this.isarId});

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
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    bool isLight = theme.brightness == Brightness.light;
    final state = ref.watch(repoDetailsProvider);
    final model = ref.read(repoDetailsProvider.notifier);

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: PageBody(
          child: state.when(
              initilize: () => Center(
                    child: Text(
                      'Loading..',
                      style: textTheme.headlineMedium,
                    ),
                  ),
              data: (data) {
                Owner? owner = data.owner.value;
                String updateDateAt =
                    DateFormat('dd/MM/yy').format(data.updatedAt!);
                String updateTimeAt = DateFormat.jm().format(data.updatedAt!);
                return CustomScrollView(
                    controller: _scrollController,
                    slivers: <Widget>[
                      SliverAppBar(
                        leading: const SizedBox.shrink(),
                        pinned: true,
                        floating: true,
                        bottom: AppBar(
                          automaticallyImplyLeading: true,
                          title: Text(data.fullName),
                        ),
                        expandedHeight: 50,
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.maxFinite,
                              color: theme.colorScheme.primary,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 8,
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        isLight ? Colors.white : Colors.black,
                                    radius: 100,
                                    backgroundImage: CachedNetworkImageProvider(owner!.avatarUrl!)
                                       
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text.rich(TextSpan(
                                      text: '${owner.login} ',
                                      style: textTheme.titleLarge!
                                          .copyWith(color: Colors.white),
                                      children: [
                                        TextSpan(
                                            text: '(${owner.type})',
                                            style: textTheme.bodySmall!
                                                .copyWith(color: Colors.white))
                                      ])),
                                  SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Text.rich(TextSpan(
                                  text: 'Last updated : ',
                                  style: textTheme.bodySmall!,
                                  children: [
                                    TextSpan(
                                        text: '$updateDateAt - $updateTimeAt')
                                  ])),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '${data.fullName}',
                                style: textTheme.headlineSmall!
                                    .copyWith(color: theme.colorScheme.primary),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Text(
                                data.description ?? 'No Description',
                                style: textTheme.bodyLarge!,
                              ),
                            ),
                          ],
                        ),
                      )
                    ]);
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(
                    child: Text(
                      '$e',
                      style:
                          textTheme.headlineMedium!.copyWith(color: Colors.red),
                    ),
                  )),
        ),
      ),
    );
  }
}
