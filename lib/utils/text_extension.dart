import 'package:flutter/material.dart';
import 'package:messenger/utils/constants.dart';

extension TextExtensions on Text {
  Text h1({TextStyle? style}) {
    const TextStyle defaultStyle = TextStyle(
        fontSize: 32,
        color: Constants.neutralColorBlack,
        fontWeight: FontWeight.w500);
    return Text(data!,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h2({TextStyle? style}) {
    const TextStyle defaultStyle = TextStyle(
        fontSize: 24,
        color: Constants.neutralColorBlack,
        fontWeight: FontWeight.w500);
    return Text(data!,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text subTitle({TextStyle? style}) {
    const TextStyle defaultStyle = TextStyle(
        fontSize: 18,
        color: Constants.neutralColorGray,
        fontWeight: FontWeight.w400,
        height: 1.8);
    return Text(data!,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: TextAlign.center,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text bodyText1({TextStyle? style}) {
    const TextStyle defaultStyle = TextStyle(
      fontSize: 20,
      color: Constants.neutralColorBlack,
      fontWeight: FontWeight.w400,
    );
    return Text(data!,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text bodyText2({TextStyle? style}) {
    const TextStyle defaultStyle = TextStyle(
        fontSize: 18,
        color: Constants.neutralColorBlack,
        fontWeight: FontWeight.w400);
    return Text(data!,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text bodyText3({TextStyle? style}) {
    const TextStyle defaultStyle = TextStyle(
        fontSize: 14,
        color: Constants.neutralColorGray,
        fontWeight: FontWeight.w400);
    return Text(data!,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}
