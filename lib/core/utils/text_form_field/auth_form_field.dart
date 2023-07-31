// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class AuthFormField extends StatelessWidget {
  final TextInputType _keyboardType;
  final String _hintText;
  final bool _textVisible;
  final FocusNode? _focusNode;
  final void Function(String)? _onSubmitted;
  final void Function(String) _onChanged;
  final String? Function(String?) _validator;
  final Widget? _suffixIcon;
  final TextEditingController? controller;
  final void Function()? _onTap;
  final double? _textHintSize;
  final int? _minLines;
  final Color? _colorHintText;
  final int? _maxLines;
  final Iterable<String>? _autofillHints;
  final BoxConstraints? _suffixIconConstraints;
  final List<TextInputFormatter>? _inputFormatters;

  const AuthFormField({
    super.key,
    required keyboardType,
    required String hintText,
    required bool textVisible,
    FocusNode? focusNode,
    this.controller,
    void Function(String)? onSubmitted,
    required void Function(String) onChanged,
    required String? Function(String?) validator,
    Function()? onTap,
    Widget? suffixIcon,
    double? textHintSize,
    int? minLines,
    int? maxLines,
    Color? colorHintText,
    final Iterable<String>? autofillHints,
    final BoxConstraints? suffixIconConstraints,
    List<TextInputFormatter>? inputFormatters,
  })  : _keyboardType = keyboardType,
        _hintText = hintText,
        _textVisible = textVisible,
        _focusNode = focusNode,
        _onSubmitted = onSubmitted,
        _onChanged = onChanged,
        _validator = validator,
        _suffixIcon = suffixIcon,
        _onTap = onTap,
        _textHintSize = textHintSize,
        _minLines = minLines,
        _colorHintText = colorHintText,
        _maxLines = maxLines,
        _autofillHints = autofillHints,
        _inputFormatters = inputFormatters,
        _suffixIconConstraints = suffixIconConstraints;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofillHints: _autofillHints,
      onTap: _onTap,
      readOnly: _onTap != null,
      controller: controller,
      focusNode: _focusNode,
      inputFormatters: _inputFormatters,
      onFieldSubmitted: _onSubmitted,
      keyboardType: _keyboardType,
      obscureText: !_textVisible,
      validator: _validator,
      cursorColor: colorPrimary2,
      cursorRadius: Radius.circular(30.sp),
      style: TextStyle(
        color: colorPrimary2,
        fontSize: 11.sp,
        fontWeight: FontWeight.w600,
      ),
      minLines: _minLines ?? 1,
      maxLines: _maxLines ?? 1,
      decoration: InputDecoration(
        errorMaxLines: 2,
        hintText: _hintText,
        hintStyle: TextStyle(
          color: _colorHintText ?? colorPrimary2,
          fontSize: _textHintSize ?? 11.sp,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorPrimary2.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(7.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorPrimary2.withOpacity(0.7),
          ),
          borderRadius: BorderRadius.circular(7.sp),
        ),
        suffixIconConstraints: _suffixIconConstraints ??
            BoxConstraints(
              minWidth: 16.sp,
              minHeight: 16.sp,
            ),
        suffixIcon: _suffixIcon,
      ),
      onChanged: _onChanged,
    );
  }
}
