import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkk_drugstore_app/core/models/models.dart';
import 'package:bkk_drugstore_app/helpers/extensions/route_ext.dart';
import 'package:bkk_drugstore_app/helpers/helpers.dart';
import 'package:bkk_drugstore_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../helpers/time_helper.dart';

class SiteCard extends StatelessWidget {
  final bool isNavigateMap;
  final SiteEntity data;
  const SiteCard({super.key, required this.data, this.isNavigateMap = false});

  @override
  Widget build(BuildContext context) {
    TimeHelper timeHelper = TimeHelper();

    bool isInTime = timeHelper.isInOpenCloseTime(data.siteOpenTime!, data.siteCloseTime!);
    bool is24Hrs = timeHelper.is24Hrs(data.siteOpenTime!, data.siteCloseTime!);
    bool isEnableBtn = is24Hrs || isInTime;
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 16, 10, 0),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [context.appStyles.shadow1],
      ),
      height: 144,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                child: Icon(
                  Icons.pin_drop,
                  size: 32,
                  color: context.appColors.blue,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    _Row1(
                      title: 'สาขา',
                      message: data.siteDesc,
                    ),
                    _Row1(
                      title: 'ระยะทางในรัศมี',
                      message: '${data.distance != null ? data.distance!.toStringAsFixed(2) : 'N/A'} กม',
                    ),
                    _RowTime(
                      openTime: data.siteOpenTime,
                      closeTime: data.siteCloseTime,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
          Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            child: Opacity(
              opacity: isEnableBtn ? 1 : 0.5,
              child: AbsorbPointer(
                absorbing: !isEnableBtn,
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            final telString = data.siteTel!.cleanedTel();
                            debugPrint('Tel $telString');
                            launchUrlString("tel://$telString");
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.all(2.0),
                            side: BorderSide(width: 1.0, color: context.appColors.blue),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: context.appColors.blue,
                                size: 14,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                data.siteTel!,
                                style: context.themeData.body12.copyWith(color: context.appColors.blue),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () async {
                            if (isNavigateMap) {
                              String googleUrl =
                                  'https://www.google.com/maps/search/?api=1&query=${data.location!.coordinates.last},${data.location!.coordinates.first}';

                              if (await canLaunchUrl(Uri.parse(googleUrl))) {
                                await launchUrl(Uri.parse(googleUrl));
                              } else {
                                throw 'Could not open the map.';
                              }
                            } else {
                              await context.push(const SiteDetailScreen().pathName, extra: data);
                            }
                          },
                          style: TextButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.all(2.0),
                            backgroundColor: context.appColors.blue,
                            foregroundColor: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.map,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                'แผนที่สาขา',
                                style: context.themeData.body14.copyWith(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Row1 extends StatelessWidget {
  final String title;
  final String? message;
  const _Row1({
    super.key,
    required this.title,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            '$title:',
            style: context.themeData.body14,
          ),
        ),
        Expanded(
          child: AutoSizeText(
            message ?? 'ไม่ระบุ',
            maxLines: 1,
            style: context.themeData.body14Bold,
          ),
        ),
      ],
    );
  }
}

class _RowTime extends StatelessWidget {
  final DateTime? openTime;
  final DateTime? closeTime;
  const _RowTime({
    super.key,
    this.openTime,
    this.closeTime,
  });

  @override
  Widget build(BuildContext context) {
    TimeHelper timeHelper = TimeHelper();
    bool isInTime = timeHelper.isInOpenCloseTime(openTime!, closeTime!);
    bool is24Hrs = timeHelper.is24Hrs(openTime!, closeTime!);
    return Row(
      children: [
        Expanded(
          child: Text(
            'เวลาเปิดปิดร้าน:',
            style: context.themeData.body14,
          ),
        ),
        Expanded(
          child: is24Hrs
              ? Text(
                  '24 ชม.',
                  style: context.themeData.body14Bold,
                )
              : (isInTime
                  ? Text(
                      '${openTime!.format(format: 'HH:mm')}-${closeTime!.format(format: 'HH:mm')}',
                      style: context.themeData.body14Bold,
                    )
                  : Row(
                      children: [
                        Text(
                          'ปิด ',
                          style: context.themeData.body14Bold.copyWith(color: Colors.red),
                        ),
                        Text(
                          '(เปิด ${openTime!.format(format: 'HH:mm')}-${closeTime!.format(format: 'HH:mm')})',
                          style: context.themeData.body14,
                        ),
                      ],
                    )),
        ),
      ],
    );
  }
}
