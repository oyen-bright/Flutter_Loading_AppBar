library flutter_loading_appbar;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A Calculator.
class LoadingAppBar extends StatelessWidget {
  bool isLoading=false;
  Widget? leading;
  LinearProgressIndicator? linearProgressIndicator;
  bool automaticallyImplyLeading;
  Widget? title;
  List<Widget>? actions;
  Widget? flexibleSpace;
  double? elevation;
  Color? shadowColor;
  ShapeBorder? shape;
  Color? backgroundColor;
  Color? foregroundColor;
  Brightness? brightness;
  IconThemeData? iconTheme;
  IconThemeData? actionsIconTheme;
  TextTheme? textTheme;
  bool primary;
  bool? centerTitle;
  bool excludeHeaderSemantics;
  double? titleSpacing;
  double toolbarOpacity = 1.0;
  double bottomOpacity = 1.0;
  double? toolbarHeight;
  double? leadingWidth;
  bool? backwardsCompatibility;
  TextStyle? toolbarTextStyle;
  TextStyle? titleTextStyle;
  SystemUiOverlayStyle? systemOverlayStyle;

  LoadingAppBar(
      {Key? key,
    required this.isLoading,
      this.leading,
      this.automaticallyImplyLeading = true,
      this.title,
      this.actions,
      this.flexibleSpace,
      this.elevation,
      this.shadowColor,
      this.shape,
      this.backgroundColor,
      this.foregroundColor,
      this.brightness, 
      this.iconTheme,
      this.actionsIconTheme,
      this.textTheme,
      this.primary=true,
      this.centerTitle,
      this.excludeHeaderSemantics=false,
      this.titleSpacing,
      this.bottomOpacity=1.0,
      this.toolbarOpacity=1.0,
      this.toolbarHeight,
      this.leadingWidth,
      this.backwardsCompatibility,
      this.toolbarTextStyle,
      this.titleTextStyle,
      this.systemOverlayStyle
      
      
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
      actions: actions,
      flexibleSpace: flexibleSpace,
      elevation: elevation,
      shadowColor: shadowColor,
      shape: shape,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      brightness: brightness,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      textTheme: textTheme,
      primary: primary,
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      bottomOpacity: bottomOpacity,
      toolbarOpacity: toolbarOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      backwardsCompatibility: backwardsCompatibility,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
       bottom: isLoading
            ?  PreferredSize(
                child: linearProgressIndicator ?? const LinearProgressIndicator(
                  color: Color(0xFF0000BC),
                ),
                preferredSize: const Size.fromHeight(0))
            : PreferredSize(
                child: Container(), preferredSize: const Size.fromHeight(0)),
    );
  }
}
