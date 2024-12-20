{$IFNDEF FPC_DOTTEDUNITS}
unit maxmod7;
{$ENDIF FPC_DOTTEDUNITS}
{$mode objfpc} 
{$apptype arm7}
{$define arm7}

{$J+}
{$INLINE ON}
{$MACRO ON}
{$PACKRECORDS C}

interface

{$IFDEF FPC_DOTTEDUNITS}
uses
  System.CTypes, NdsApi.Nds7;
{$ELSE FPC_DOTTEDUNITS}
uses
  ctypes, nds7;
{$ENDIF FPC_DOTTEDUNITS}

{$linklib nds7}
{$linklib mm7}

{$linklib c}
{$linklib gcc}
{$linklib sysbase}

{$define NDS_INTERFACE}
{$include inc/mm_types.inc}
{$include inc/maxmod7.inc}
{$undef NDS_INTERFACE}

implementation
{$define NDS_IMPLEMENTATION}
{$include inc/maxmod7.inc}
{$undef NDS_IMPLEMENTATION}

end.
