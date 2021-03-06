package thx.core;

class Bools {
/**
Returns a comparison value (`Int`) from two boolean values.
*/
  public static function compare(a : Bool, b : Bool)
    return a == b ? 0 : (a ? -1 : 1);

/**
Converts a boolean to an integer value (`true` => `1`, `false` => `0`).
*/
  public static function toInt(v : Bool)
    return v ? 1 : 0;

/**
Returns `true` if the passed value is either `true` or `false` (case insensitive).
*/
  public static function canParse(v : String) return switch v.toLowerCase() {
    case "true", "false", null, "0", "1", "on", "off": true;
    case _: false;
  }

/**
Returns `true`/`false` if the passed value is `true`/`false` (case insensitive); with any other value it will return null.
*/
  public static function parse(v : String) : Bool return switch v.toLowerCase() {
    case "true", "1", "on": true;
    case "false", null, "0", "off": false;
    case v: throw 'unable to parse "$v"';
  }
}