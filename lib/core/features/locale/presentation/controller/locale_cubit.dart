import 'package:ecommerce/core/features/locale/data/repos/locale_repository.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:print_color/print_color.dart';

class LocaleCubit extends Cubit<LocaleState> {
  final ILocaleRepository _localeRepository;
  late Locale val;

  LocaleCubit({required ILocaleRepository localeRepository})
      : _localeRepository = localeRepository,
        super(LocalizationInitialState()) {
    val = _localeRepository.getCachedLocale();
  }

  void switchLocale() async {
    val = val.languageCode == "en" ? const Locale("ar") : const Locale("en");
    await _localeRepository.cacheLocale(val);
    emit(SwitchLocaleState());
  }

  bool get isArabic => val.languageCode == "ar";

  @override
  void onChange(Change<LocaleState> change) {
    Print.cyan("LocaleCubit $change");
    super.onChange(change);
  }
}
