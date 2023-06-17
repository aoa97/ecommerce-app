import 'package:ecommerce/core/features/locale/presentation/controller/locale_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleCubit extends Cubit<LocaleState> {
  Locale val = const Locale("en");

  LocaleCubit() : super(LocalizationInitialState());

  void switchLocale() {
    val = val.languageCode == "en" ? const Locale("ar") : const Locale("en");
    emit(SwitchLocaleState());
  }

  @override
  void onChange(Change<LocaleState> change) {
    print("LocaleCubit $change");
    super.onChange(change);
  }
}
