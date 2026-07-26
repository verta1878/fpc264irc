unit charconsts;
{$mode objfpc}{$H+}
interface
uses SysUtils;

type
  EArgumentException = class(Exception);
  EArgumentOutOfRangeException = class(Exception);
  ENoConstructException = class(Exception);

{$IFNDEF FPC_HAS_FEATURE_UNICODESTRINGS}
  TCompareOption = (coLigatures, coIgnoreCase, coIgnoreKanaType,
    coIgnoreNonSpace, coIgnoreSymbols, coIgnoreWidth, coLinguisticCasing,
    coDigitAsNumbers, coStringSort);
  TCompareOptions = set of TCompareOption;
{$ENDIF}

resourcestring
  SInvalidUnicodeCodePointSequence = 'Invalid Unicode code point sequence';
  SInvalidUTF32Char = 'Invalid UTF-32 character: U+%x';
  SInvalidHighSurrogate = 'Invalid high surrogate at index %d';
  SHighSurrogateOutOfRange = 'High surrogate out of range';
  SLowSurrogateOutOfRange = 'Low surrogate out of range';
  SStringIndexOutOfRange = 'String index out of range';
  SClassCantBeConstructed = 'Class cannot be constructed';

implementation
end.
