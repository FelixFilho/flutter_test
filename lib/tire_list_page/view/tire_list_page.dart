import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:prolog_test/tire_details_page/view/tire_details_page.dart';
import 'package:prolog_test/tire_list_page/cubit/tire_list_cubit.dart';
import 'package:prolog_test/tire_list_page/cubit/tire_list_state.dart';
import 'package:prolog_test/utils/widgets/loading_widget.dart';
import 'package:prolog_test/utils/widgets/tire_item_widget.dart';
import 'package:prolog_test/utils/widgets/try_again_widget.dart';

class TireListPage extends StatelessWidget {
  const TireListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TireListCubit(repository: GetIt.instance.get()),
      child: const TireListView(),
    );
  }
}

class TireListView extends StatefulWidget {
  const TireListView({
    super.key,
  });

  @override
  State<TireListView> createState() => _TireListViewState();
}

class _TireListViewState extends State<TireListView> {
  late TireListCubit _bloc;

  void _onTirePressed(int id) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => TireDetailsPage(
              id: id,
            )));
  }

  void _onTryAgainPressed() => _bloc.getTires();

  @override
  void initState() {
    super.initState();
    _bloc = context.read<TireListCubit>();
    _bloc.getTires();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pneus'),
      ),
      body:
          BlocBuilder<TireListCubit, TireListState>(builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWidget();
        }
        if (!state.isLoading && state.tires == null) {
          return TryAgainWidget(onPressed: _onTryAgainPressed);
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: state.tires!
                  .map((e) => TireItemWidget(
                        tire: e,
                        onPressed: () => _onTirePressed(e.id),
                      ))
                  .toList(),
            ),
          ),
        );
      }),
    );
  }
}
