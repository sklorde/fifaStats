import 'package:diacritic/diacritic.dart';

extension StringExtension on String {
  toPosition() {
    return this.replaceAll('[', '').replaceAll(']', '');
  }

  toCompare() {
    return removeDiacritics(this.toLowerCase());
  }

  toLanguage() {
    switch (this) {
      case "GK":
        return 'GOL';
        break;

      case "RB":
        return 'LD';
        break;

      case "CB":
        return 'ZAG';
        break;

      case "LB":
        return 'LE';
        break;

      case "CDM":
        return 'VOL';
        break;

      case "RM":
        return "MD";
        break;

      case "CM":
        return "MC";
        break;

      case "LM":
        return "ME";
        break;

      case "CAM":
        return "MEI";
        break;

      case "RW":
        return "PD";
        break;

      case "ST":
        return "ATA";
        break;

      case "LW":
        return "PE";
        break;

      case "RWB":
        return "ADD";
        break;

      case "LWB":
        return "ADE";
        break;

      case "RF":
        return "MAD";
        break;

      case "CF":
        return "SA";
        break;

      case "LF":
        return "MAE";
        break;

      default:
        return '';
        break;
    }
  }
}
