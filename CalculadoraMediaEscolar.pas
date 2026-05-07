unit CalculadoraMediaEscolar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTelaPrincipal = class(TForm)
    edtNota1: TEdit;
    lblNota1: TLabel;
    lblNota2: TLabel;
    lblNota3: TLabel;
    edtNota2: TEdit;
    edtNota3: TEdit;
    btnCalcularMedia: TButton;
    lblMedia: TLabel;
    lblResultado: TLabel;
    procedure btnCalcularMediaClick(Sender: TObject);
  private
    function CalcularMedia(n1, n2, n3: Double): Double;
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

procedure TfrmTelaPrincipal.btnCalcularMediaClick(Sender: TObject);
var
  n1, n2, n3, media: Double;
  resultado: String;
begin

  if (Trim(edtNota1.Text) = '') or
     (Trim(edtNota2.Text) = '') or
     (Trim(edtNota3.Text) = '') then
  begin
    ShowMessage('Preencha todas as notas.');
    Exit;
  end;

  if not TryStrToFloat(edtNota1.Text, n1) or
     not TryStrToFloat(edtNota2.Text, n2) or
     not TryStrToFloat(edtNota3.Text, n3) then
  begin
    ShowMessage('Digite apenas números válidos.');
    Exit;
  end;

  if (n1 < 0) or (n1 > 10) or
     (n2 < 0) or (n2 > 10) or
     (n3 < 0) or (n3 > 10) then
  begin
    ShowMessage('As notas devem estar entre 0 e 10.');
    Exit;
  end;

  media := CalcularMedia(n1, n2, n3);
  lblMedia.Caption := 'Média: ' + FormatFloat('0.00', media);

  if media >= 7 then
    resultado := 'Aprovado'
  else if media >= 5 then
    resultado := 'Recuperação'
  else
    resultado := 'Reprovado';

  lblResultado.Caption := 'Resultado: ' + resultado;
end;

function TfrmTelaPrincipal.CalcularMedia(n1, n2, n3: Double): Double;
begin
  Result:= (n1 + n2 + n3) / 3;
end;



end.
