import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainErrorWidget extends StatelessWidget {
  final ErrorModel error;
  final VoidCallback onRefresh;

  const MainErrorWidget({super.key, required this.error, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    switch (error.runtimeType) {
      case SocketErrorModel:
        return _ErrorWidget(onRefresh: onRefresh, title: tr(context).socket_t, desc: tr(context).socket);
      case TimeoutErrorModel:
        return _ErrorWidget(onRefresh: onRefresh, title: tr(context).timeout_t, desc: tr(context).timeout);
      case UnexpectedErrorModel:
      default:
        return _ErrorWidget(onRefresh: onRefresh, title: tr(context).unexpected_t, desc: tr(context).unexpected);
    }
  }
}

class _ErrorWidget extends StatelessWidget {
  final String title;
  final String desc;
  final VoidCallback onRefresh;

  const _ErrorWidget({required this.title, required this.desc, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: Sizes.mqw * .2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox.square(
            dimension: 155,
            child: FittedBox(child: Icon(Icons.error_outline, color: Palette.error)),
          ),
          12.h.sph,
          Text(title, style: context.headlineLargeText),
          16.h.sph,
          Text(desc, style: context.labelLargeText!.copyWith(height: 1.5), textAlign: TextAlign.center),
          20.h.sph,
          ElevatedButton(
            onPressed: onRefresh,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const StadiumBorder(),
              minimumSize: Size(0, 40.h),
              backgroundColor: const Color.fromARGB(255, 232, 232, 232),
              foregroundColor: Palette.black,
            ),
            child: Text(tr(context).tryAgain),
          ),
        ],
      ),
    );
  }
}
