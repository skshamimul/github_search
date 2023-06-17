import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pagination_state/pagination_state.dart';

class PaginationItemsList extends StatelessWidget {
  final PaginationState state;
  final dynamic model;
  final Widget Function() child;
  const PaginationItemsList(
      {Key? key, required this.state, required this.model, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return state.when(
        data: (items) {
          return items.isEmpty
              ? SliverToBoxAdapter(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          model.fetchFirstBatch();
                        },
                        icon: const Icon(Icons.replay),
                      ),
                      const Chip(
                        label: Text("No items Found!"),
                      ),
                    ],
                  ),
                )
              : child();
        },
        loading: () => const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator())),
        error: (e, stk) => child(),
        onGoingLoading: (items) {
          return child();
        },
        onGoingError: (items, e, stk) {
          return child();
        },
        searchResult: (items) {
          return child();
        });
  }
}

class NoMoreItems extends ConsumerWidget {
  final PaginationState state;
  final dynamic model;
  const NoMoreItems({Key? key, required this.state, this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (items) {
            final nomoreItems = model.noMoreItems;
            return nomoreItems as bool
                ? const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "No More Items Found!",
                      textAlign: TextAlign.center,
                    ),
                  )
                : const SizedBox.shrink();
          }),
    );
  }
}

class OnGoingBottomWidget extends StatelessWidget {
  final PaginationState state;
  const OnGoingBottomWidget({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(40),
      sliver: SliverToBoxAdapter(
        child: Consumer(builder: (context, ref, child) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            onGoingLoading: (items) =>
                const Center(child: CircularProgressIndicator()),
            onGoingError: (items, e, stk) => const Center(
              child:  Column(
                children:  [
                  Icon(Icons.info),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Something Went Wrong!',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

typedef CustomCallBack = Widget Function(BuildContext, dynamic);

class SearchListBuilder extends StatelessWidget {
  const SearchListBuilder({
    Key? key,
    required this.items,
    required this.customCallBack,
  }) : super(key: key);

  final List<dynamic> items;
  final CustomCallBack customCallBack;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var data = items[index];

          return customCallBack(context, data);
        },
        childCount: items.length,
      ),
    );
  }
}
