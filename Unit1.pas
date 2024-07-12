unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    edt6: TEdit;
    lbl2: TLabel;
    lbl1: TLabel;
    edt2: TEdit;
    Label2: TLabel;
    edt3: TEdit;
    Label3: TLabel;
    edt4: TEdit;
    Label4: TLabel;
    edt5: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    procedure edt6Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.edt6Change(Sender: TObject);
begin
 with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('select * from kustomer where nama like "%'+edt2.Text+'%"');
Open;
end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
ShowMessage('Nama Kustomer Tidak Boleh Kosong!');
end else
if DataModule2.zqry1.Locate('nama',edt1.Text,[]) then
begin
ShowMessage('Nama Kustomer '+edt1.Text+' Sudah Ada Didalam Sistem');
end else
if edt1.Text = '' then
begin
end else
Begin // simpan
with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+ComboBox1.Text+'")');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from kustomer');
Open;
end;
ShowMessage('Data Berhasil Disimpan!');
end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
ShowMessage('Nama Tidak Boleh Kosong!');
end else
if edt1.Text = DataModule2.zqry1.Fields[1].AsString then
begin
ShowMessage('Nama '+edt1.Text+' Tidak Ada Perubahan');
end else
if edt1.Text = '' then
begin
end else
if edt1.Text = DataModule2.zqry1.Fields[1].AsString then
begin

end else
begin //kode update
with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('update kustomer set nik="'+edt1.text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('update kustomer set nama="'+edt2.text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('update kustomer set telp="'+edt3.text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('update kustomer set email="'+edt4.text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('update kustomer set alamat="'+edt5.text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from kustomer');
Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('delete from kustomer where id= "'+a+'"');
ExecSQL ;

SQL.Clear;
SQL.Add('select * from kustomer');
Open;
end;
ShowMessage('Data Berhasil DiDelete!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edt1.clear;
edt2.clear;
edt3.clear;
edt4.clear;
edt5.clear;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
 if ComboBox1.Text='Ya' then
    begin
    Label7.Caption:='10%';
    end  else   if ComboBox1.Text='Tidak' then
    begin
      Label7.Caption:='5%';
    end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
 edt1.Text:= DataModule2.zqry1.Fields[1].AsString;
edt1.Text:= DataModule2.zqry1.Fields[1].AsString;
a:= DataModule2.zqry1.Fields[0].AsString;
edt1.Enabled:= True;
end;

end.
