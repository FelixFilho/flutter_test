import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:prolog_test/tire_details_page/cubit/tire_details_cubit.dart';
import 'package:prolog_test/tire_details_page/cubit/tire_details_state.dart';
import 'package:prolog_test/utils/extensions/tire_status_extensions.dart';
import 'package:prolog_test/utils/widgets/info_fields_widget.dart';
import 'package:prolog_test/utils/widgets/loading_widget.dart';
import 'package:prolog_test/utils/widgets/try_again_widget.dart';

class TireDetailsPage extends StatelessWidget {
  final int id;
  const TireDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TireDetailsCubit(repository: GetIt.instance.get()),
        child: TireDetailsView(id: id));
  }
}

class TireDetailsView extends StatefulWidget {
  final int id;

  const TireDetailsView({super.key, required this.id});

  @override
  State<TireDetailsView> createState() => _TireDetailsViewState();
}

class _TireDetailsViewState extends State<TireDetailsView> {
  late TireDetailsCubit _bloc;

  void _onTryAgainPressed() => _bloc.getTireById(widget.id);

  @override
  void initState() {
    super.initState();

    _bloc = context.read<TireDetailsCubit>();
    _bloc.getTireById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do pneu'),
      ),
      body: BlocBuilder<TireDetailsCubit, TireDetailsState>(
          builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWidget();
        }
        if (!state.isLoading && state.tire == null) {
          return TryAgainWidget(onPressed: _onTryAgainPressed);
        }
        final tire = state.tire!;
        return SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  InfoFieldsWidget(
                    title: 'Número de série',
                    content: tire.serialNumber,
                  ),
                  InfoFieldsWidget(
                    title: 'Nome da empresa',
                    content: tire.companyGroupName,
                  ),
                  InfoFieldsWidget(
                      title: 'Escritório da franquia',
                      content: tire.branchOfficeName),
                  InfoFieldsWidget(
                    title: 'Vezes recapeado',
                    content: tire.timesRetreaded.toString(),
                  ),
                  InfoFieldsWidget(
                    title: 'Máximo número de recapeamento',
                    content: tire.maxRetreadsExpected.toString(),
                  ),
                  InfoFieldsWidget(
                    title: 'Preço de compra',
                    content: 'R\$ ${tire.purchaseCost}',
                  ),
                  InfoFieldsWidget(
                    title: 'Pneu novo',
                    content: tire.newTire ? 'Novo' : 'Usado',
                  ),
                  InfoFieldsWidget(
                    title: 'Status',
                    content: tire.status.tireStatusToString(),
                  ),
                  InfoFieldsWidget(
                    title: 'Criado em',
                    content: DateFormat('dd/MM/yyyy').format(
                      DateTime.parse(tire.createdAt),
                    ),
                  ),
                  InfoFieldsWidget(
                    title: 'Fabricante',
                    content: tire.make.name,
                  ),
                  InfoFieldsWidget(
                    title: 'Altura do pneu',
                    content: tire.tireSize.height.toString(),
                  ),
                  InfoFieldsWidget(
                    title: 'Largura do pneu',
                    content: tire.tireSize.width.toString(),
                  ),
                  InfoFieldsWidget(
                    title: 'Aro do pneu',
                    content: tire.tireSize.rim.toString(),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
