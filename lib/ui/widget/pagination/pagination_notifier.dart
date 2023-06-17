// ignore_for_file: always_specify_types

import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/ui/widget/pagination/pagination_state/pagination_state.dart';

class PaginationNotifier<T> extends StateNotifier<PaginationState<T>> {
  final int itemsPerBatch;


  int _skip = 1;
  PaginationNotifier(
      {required this.itemsPerBatch, required this.fetchNextItems})
      : super(const PaginationState.loading());

  final Future<List<T>> Function(Map<String, dynamic>) fetchNextItems;

  List<T> _items = [];
  List<T> get items => _items;
  Timer _timer = Timer(const Duration(milliseconds: 0), () {});
  bool _isSearching = false;

  bool noMoreItems = false;

  String sort = 'desc';
  Map<String, dynamic> _query = {};

  Map<String, dynamic> getParameterData() =>
      {"page": _skip, "take": itemsPerBatch, 'sort': sort};

  void updateData(List<T> result) {
    noMoreItems = result.length < itemsPerBatch;
    if (_isSearching) {
      if (result.isEmpty) {
        if (!mounted) return;
        state = PaginationState.searchResult(result);
      } else {
        if (!mounted) return;
        state = PaginationState.searchResult(result);
      }
    } else {
      if (result.isEmpty) {
        if (!mounted) return;
        state = PaginationState.data(_items);
      } else {
        if (!mounted) return;
        state = PaginationState.data(_items..addAll(result));
      }
    }

    _skip++;
  }

  Future<void> fetchFirstBatch() async {
    try {
      if (!mounted) return;
      state = const PaginationState.loading();

      final List<T> result = _items.isEmpty
          ? await fetchNextItems(getParameterData())
          : await fetchNextItems(getParameterData());
      updateData(result);
    } catch (e, stk) {
      if (!mounted) return;
      state = PaginationState.error(e, stk);
    }
  }

  void setQuery(Map<String, dynamic> query) {
    _query = query;
  }

  void setSkip(int skip) {
    if (skip == 0) {
      _skip = 1;
    } else {
      _skip = skip;
    }
  }

  void setSearching(bool isSearching) {
    _isSearching = isSearching;
  }

  void clearData() {
    _items.clear();
  }

  Future<void> fetchNextBatch() async {
    if (_timer.isActive && _items.isNotEmpty) {
      return;
    }
    _timer = Timer(const Duration(milliseconds: 1000), () {});

    if (noMoreItems) {
      return;
    }

    if (state == PaginationState<T>.onGoingLoading(_items)) {
     
      return;
    }

   
    if (!mounted) return;
    state = PaginationState.onGoingLoading(_items);

    try {

      // ignore: inference_failure_on_instance_creation
      await Future.delayed(const Duration(seconds: 1));
      //var parameter = getParameterData(_skip, itemsPerBatch);

      final result = await fetchNextItems(getParameterData());
    
      updateData(result);
    } catch (e, stk) {
    
      if (!mounted) return;
      state = PaginationState.onGoingError(_items, e, stk);
    }
  }
}
