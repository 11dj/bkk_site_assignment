import 'package:bkk_drugstore_app/core/viewmodels/viewmodels.dart';
import 'package:bkk_drugstore_app/helpers/time_helper.dart';

import 'package:flutter/material.dart';
import 'package:bkk_drugstore_app/helpers/helpers.dart';

import 'package:provider/provider.dart';

import '../core/models/site/site_model.dart';

import 'widgets/search_textfield.dart';
import 'widgets/site_card.dart';

class SiteListScreen extends StatefulWidget {
  const SiteListScreen({super.key});

  @override
  State<SiteListScreen> createState() => _SiteListScreenState();
}

class _SiteListScreenState extends State<SiteListScreen> {
  final TextEditingController _searchController = TextEditingController();
  TimeHelper timeHelper = TimeHelper();
  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearch);
    loadData();
  }

  void loadData() async => await context.read<SiteViewModel>().getSiteList();

  void _onSearch() => setState(() => {});

  @override
  void dispose() {
    _searchController.removeListener(_onSearch);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 1.0,
        title: Text(
          'ค้นหาสาขา',
          style: context.themeData.appBarText,
        ),
      ),
      body: Column(
        children: [
          SearchTextfield(
            controller: _searchController,
          ),
          Expanded(
            child: Consumer<SiteViewModel>(builder: (context, SiteViewModel state, child) {
              List<SiteEntity> sites =
                  List.from(state.siteList.where((SiteEntity el) => el.siteDesc!.contains(_searchController.text)));
              sites.sort((SiteEntity a, SiteEntity b) {
                bool isInTimeA = timeHelper.isInOpenCloseTime(a.siteOpenTime!, a.siteCloseTime!);
                bool is24HrsA = timeHelper.is24Hrs(a.siteOpenTime!, a.siteCloseTime!);
                bool isOpenA = is24HrsA || isInTimeA;
                bool isInTimeB = timeHelper.isInOpenCloseTime(b.siteOpenTime!, b.siteCloseTime!);
                bool is24HrsB = timeHelper.is24Hrs(b.siteOpenTime!, b.siteCloseTime!);
                bool isOpenB = is24HrsB || isInTimeB;

                if (isOpenA != isOpenB) {
                  return isOpenA ? -1 : 1;
                } else {
                  return (a.distance ?? 9999).compareTo(b.distance ?? 9999);
                }
              });
              return ListView.builder(
                itemCount: sites.length,
                itemBuilder: (context, index) {
                  return SiteCard(
                    data: sites[index],
                  );
                },
              );
            }),
          )
        ],
      ),
    );
  }
}
