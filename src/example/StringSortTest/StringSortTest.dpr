program StringSortTest;

uses
  EMemLeaks,
  Vcl.Forms,
  Form.StringSortTest in 'Form.StringSortTest.pas' {FormStringSortTest},
  Sort.StringCompare in '..\..\lib\Sort.StringCompare.pas',
  Sort.StringList in '..\..\lib\Sort.StringList.pas',
  Sort.ListView in '..\..\lib\Sort.ListView.pas';

{$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'String Sort Example';
  Application.CreateForm(TFormStringSortTest, FormStringSortTest);
  Application.Run;
end.
