{$MODE DELPHI}
{$H-}
Unit m_Strings;
{ Shim — redirects to thd_shim }
Interface
Function strUpper(S: String): String;
Implementation
Uses thd_shim;
Function strUpper(S: String): String;
Begin Result := thd_shim.strUpper(S); End;
End.
