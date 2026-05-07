program TelaPrincipal;

uses
  Vcl.Forms,
  CalculadoraMediaEscolar in 'CalculadoraMediaEscolar.pas' {frmTelaPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
