library flutter_loading_appbar;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



AppBar LoadingAppBar({required  bool isLoading,
       required LinearProgressIndicator? linearProgressIndicator,
       Widget? leading,
      bool automaticallyImplyLeading = true,
      Widget? title,
      List<Widget>? actions,
      Widget? flexibleSpace,
      double? elevation,
      Color? shadowColor,
      ShapeBorder? shape,
      Color? backgroundColor,
      Color? foregroundColor,
      Brightness? brightness, 
      IconThemeData? iconTheme,
      IconThemeData? actionsIconTheme,
       TextTheme? textTheme,
      bool primary=true,
      bool? centerTitle,
      bool excludeHeaderSemantics=false,
      double? titleSpacing,
      double bottomOpacity=1.0,
      double toolbarOpacity=1.0,
      double? toolbarHeight,
      double? leadingWidth,
      bool? backwardsCompatibility,
      TextStyle? toolbarTextStyle,
      TextStyle? titleTextStyle,
      SystemUiOverlayStyle? systemOverlayStyle}){

  return  AppBar(
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


