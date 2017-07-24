unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IB_UpdateBar, Grids, IB_Grid, IB_Components, IB_Access, Mask, IB_EditButton, IB_Controls;

type
  TForm6 = class(TForm)
    IB_Connection1: TIB_Connection;
    QyCliente: TIB_Query;
    DsCliente: TIB_DataSource;
    IB_Grid1: TIB_Grid;
    IB_UpdateBar1: TIB_UpdateBar;
    IB_UpdateBar2: TIB_UpdateBar;
    QyTelefone: TIB_Query;
    DsTelefone: TIB_DataSource;
    IB_Grid2: TIB_Grid;
    Button1: TButton;
    Button2: TButton;
    edtCLIENTE_ID: TIB_Edit;
    edtNOME: TIB_Edit;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QyClienteAfterPost(IB_Dataset: TIB_Dataset);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  QyCliente.ApplyUpdates;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  QyTelefone.ApplyUpdates;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  QyCliente.CancelUpdates;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  QyTelefone.CancelUpdates;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  QyCliente.Open();
  QyTelefone.Open();
end;

procedure TForm6.QyClienteAfterPost(IB_Dataset: TIB_Dataset);
begin
  QyTelefone.Refresh;
end;

end.
