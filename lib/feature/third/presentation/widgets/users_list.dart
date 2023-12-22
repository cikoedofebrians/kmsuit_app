import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmsuit_app/feature/third/presentation/bloc/third_bloc.dart';
import 'package:kmsuit_app/feature/third/presentation/widgets/user_item.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_loadMoreListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_loadMoreListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMoreListener() {
    if (_isBottom) {
      context.read<ThirdBloc>().add(const FetchUserEvent(true));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThirdBloc, ThirdState>(
      builder: (context, state) {
        return ListView(
          controller: _scrollController,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              itemBuilder: (context, index) => UserItem(
                user: state.userList[index],
              ),
              itemCount: state.userList.length,
            ),
            if (state.loadMoreFetchStatus.isLoading)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              )
          ],
        );
      },
    );
  }
}
