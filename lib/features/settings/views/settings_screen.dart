import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pomodoro_flutter/extensions/num_extansions.dart';
import 'package:pomodoro_flutter/features/settings/domain/bloc/settings_cubit.dart';
import 'package:pomodoro_flutter/features/settings/views/widgets/colored_list.dart';
import 'package:pomodoro_flutter/features/settings/views/widgets/item_time.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';
import 'package:pomodoro_flutter/ui/theme/typography/typography.dart';
import 'package:pomodoro_flutter/ui/widgets/input.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../helper/custom_text_input_formatter.dart';

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  static const route = "/setting";

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    final localizations = AppLocalizations.of(context)!;

    useEffect(() {
      cubit.callReload();
      return null;
    }, []);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: pinkViolet,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 30,
            ),
            child: BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          localizations.settings,
                          style: ProjectTypography.titleModal
                              .copyWith(color: white),
                        ),
                        Icon(
                          Icons.close,
                          color: white,
                          size: 30,
                        )
                      ],
                    ),
                    22.h,
                    Text(
                      localizations.settings_time,
                      style: ProjectTypography.subTitleModal.copyWith(
                        color: white.withOpacity(
                          0.7,
                        ),
                      ),
                    ),
                    18.h,
                    ItemTime(
                      text: localizations.tab_mode_pomodoro,
                      controller: cubit.pomodoroCntrl,
                      limit: LimitNumericTextFormatter(120),
                      onFocus: (value) => !value
                          ? cubit.defaultClearDataUnFocus(cubit.pomodoroCntrl)
                          : null,
                    ),
                    7.h,
                    ItemTime(
                      text: localizations.tab_mode_short,
                      controller: cubit.shortBreakCntrl,
                      limit: LimitNumericTextFormatter(60),
                      onFocus: (value) => !value
                          ? cubit.defaultClearDataUnFocus(cubit.shortBreakCntrl)
                          : null,
                    ),
                    7.h,
                    ItemTime(
                      text: localizations.tab_mode_long,
                      controller: cubit.longBreakCntrl,
                      limit: LimitNumericTextFormatter(90),
                      onFocus: (value) => !value
                          ? cubit.defaultClearDataUnFocus(cubit.longBreakCntrl)
                          : null,
                    ),
                    16.h,
                    Text(
                      localizations.settings_theme,
                      style: ProjectTypography.subTitleModal.copyWith(
                        color: white.withOpacity(
                          0.7,
                        ),
                      ),
                    ),
                    7.h,
                    ColoredList(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
