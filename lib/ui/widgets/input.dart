import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pomodoro_flutter/ui/widgets/scale_on_tap.dart';
import '../animations/configs/animation_config.dart';
import '../animations/widgets/animated_size.dart';
import '../animations/widgets/collapsable_child.dart';
import '../res/colors.dart';
import '../theme/typography/typography.dart';
import 'error_box.dart';
import 'input_error_controller.dart';


class Input extends HookWidget {
  const Input({
    Key? key,
    required this.controller,
    this.inputErrorController,
    this.formatters,
    this.autoFillHints,
    this.hint,
    this.onSubmit,
    this.label,
    this.inputType,
    this.isHidable = false,
    this.readOnly = false,
    this.trailing,
    this.trailingLabel,
    this.autofocus = false,
    this.onComplete,
    this.textInputAction,
    this.isExpand = false,
    this.onTap,
    this.onFocus,
  }) : super(key: key);

  final TextEditingController controller;
  final InputErrorController? inputErrorController;
  final List<TextInputFormatter>? formatters;
  final Iterable<String>? autoFillHints;
  final String? hint;
  final String? label;
  final VoidCallback? onSubmit;
  final VoidCallback? onTap;
  final TextInputType? inputType;
  final bool isHidable;
  final bool readOnly;
  final Widget? trailing;
  final Widget? trailingLabel;
  final bool autofocus;
  final VoidCallback? onComplete;
  final TextInputAction? textInputAction;
  final bool isExpand;
  final Function(bool isFocus)? onFocus;

  static const _animationConfig = AnimationNormalConfig();

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final inputError = useState(
      inputErrorController?.getLocalizedError(localizations),
    );

    final isHidden = useState(isHidable);

    final focus = useFocusNode();

    void toggleHidden() {
      isHidden.value = !isHidden.value;
    }

    void errorListener() {
      inputError.value = inputErrorController?.getLocalizedError(localizations);
    }

    void onListenFocus(){
      if(onFocus != null){
        onFocus!(focus.hasFocus);
      }
    }

    VoidCallback? effect() {
      inputErrorController?.addListener(errorListener);
      focus.addListener(onListenFocus);
      return () {
        focus.removeListener(onListenFocus);
        inputErrorController?.removeListener(errorListener);
      };
    }

    useEffect(effect, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (label != null)
              Padding(
                padding: const EdgeInsets.only(left: 4.0, bottom: 8.0),
                child: Text(
                  label!,
                  style: ProjectTypography.captionRegular
                      .copyWith(color: Colors.white),
                ),
              ),
            const Spacer(),
            if (trailingLabel != null)
              Padding(
                padding:
                    const EdgeInsets.only(left: 4.0, right: 4.0, bottom: 8.0),
                child: trailingLabel,
              ),
          ],
        ),
        AnimatedContainer(
          duration: _animationConfig.duration,
          curve: _animationConfig.curve,
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: white.withOpacity(0.4),
            border: inputError.value != null
                ? Border.all(
                    color: warning,
                    width: 1.0,
                  )
                : null,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: NoDecorationTextInput(
                      focusNode: focus,
                      onTap: onTap,
                      controller: controller,
                      textInputType: inputType,
                      autoFillHints: autoFillHints,
                      formatters: formatters,
                      hint: hint,
                      onSubmit: onSubmit,
                      textInputAction: textInputAction,
                      onComplete: onComplete,
                      obscureText: isHidden.value,
                      readOnly: readOnly,
                      autofocus: autofocus,
                      maxLines: isExpand ? 5 : 1,
                      hintStyle: ProjectTypography.tabModeInActive.copyWith(color: grey85),
                      inputStyle: ProjectTypography.tabModeInActive.copyWith(color: white),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 9,
                      ),
                    ),
                  ),
                  CollapsibleChild(
                    axis: Axis.horizontal,
                    child: trailing,
                  ),
                  const SizedBox(width: 12.0),
                  if (isHidable)
                    ScaleOnTap(
                      onTap: toggleHidden,
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        alignment: Alignment.center,
                        // child: Icon(
                        //   isHidden.value
                        //       ? SupsterIcons.eye_exited
                        //       : SupsterIcons.eye_exited_crosslined,
                        //   size: 18.0,
                        //   color: Colors.white,
                        // ),
                      ),
                    )
                ],
              ),
              ErrorBox(error: inputError.value),
            ],
          ),
        ),
      ],
    );
  }
}

class NoDecorationTextInput extends StatelessWidget {
  const NoDecorationTextInput({
    Key? key,
    required this.controller,
    this.formatters,
    this.onSubmit,
    this.textInputType,
    this.readOnly = false,
    this.autoFillHints,
    this.hint,
    this.obscureText = false,
    this.inputStyle,
    this.cursorColor,
    this.minLines = 1,
    this.maxLines = 1,
    this.focusNode,
    this.hintStyle,
    this.autofocus = false,
    this.textCapitalization,
    this.onComplete,
    this.textInputAction,
    this.contentPadding,
    this.onTap,
  }) : super(key: key);

  final TextEditingController controller;
  final List<TextInputFormatter>? formatters;
  final VoidCallback? onSubmit;
  final TextInputType? textInputType;
  final bool readOnly;
  final Iterable<String>? autoFillHints;
  final String? hint;
  final bool obscureText;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final Color? cursorColor;
  final int minLines;
  final int maxLines;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextCapitalization? textCapitalization;
  final VoidCallback? onComplete;
  final TextInputAction? textInputAction;
  final EdgeInsets? contentPadding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RiderAnimatedSize(
      alignment: Alignment.topCenter,
      child: TextField(
        onTap: onTap,
        magnifierConfiguration: TextMagnifierConfiguration.disabled,
        autofocus: autofocus,
        style: inputStyle ??
            ProjectTypography.userInput
                .copyWith(color: white),
        cursorColor: cursorColor ?? Colors.white,
        controller: controller,
        inputFormatters: formatters,
        keyboardType: textInputType,
        onSubmitted: (_) => onSubmit?.call(),
        onEditingComplete: onComplete,
        readOnly: readOnly,
        autofillHints: autoFillHints,
        obscureText: obscureText,
        maxLines: maxLines,
        minLines: minLines,
        focusNode: focusNode,
        textInputAction: textInputAction ??
            (textInputType == TextInputType.multiline
                ? TextInputAction.newline
                : onSubmit == null
                    ? TextInputAction.next
                    : TextInputAction.done),
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: contentPadding ?? EdgeInsets.zero,
          hintMaxLines: 1,
          hintStyle: hintStyle ??
              ProjectTypography.userInput
                  .copyWith(color: white),
          hintText: hint,
          filled: false,
          isDense: true,
        ),
      ),
    );
  }
}
