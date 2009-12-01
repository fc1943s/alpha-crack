{$WARN SYMBOL_PLATFORM OFF}
unit Uac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdCustomTCPServer,
  IdCustomHTTPServer, IdHTTPServer, StdCtrls, idcontext, AppEvnts, Stew, shellapi;

type
  TMainForm = class(TForm)
    http: TIdHTTPServer;
    lblText: TLabel;
    lblStatus: TLabel;
    lblStatus2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure httpCommandGet(AContext: TIdContext; ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function returnvalues(request: TIdHTTPRequestInfo; doc: UnicodeString): UnicodeString;
  end;

var
  MainForm: TMainForm;
  filename: UnicodeString;
  hosts: UnicodeString;

implementation

{$R *.dfm}

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StewWriteTxt(hosts, '127.0.0.1 localhost', true, true);
  ShellExecute(Handle, 'open', 'http://u-forum.org/', nil, nil, 1);
  StewKillProcess(extractfilename(ParamStr(0)), ccAll);

end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  if not Stewcreatemutex('u-forum.org') then
    halt;
  lblText.caption := 'Alpha Crack 1.0' + #13#10 + 'by Stew UnknowN' + #13#10 + 'http://u-forum.org/' + #13#10#13#10 + 'Utilize o trainer com o crack aberto,' +
    #13#10 + 'e não se esqueça de FINALIZAR qualquer tipo de HTTP server,' + #13#10 + 'ou qualquer outro programa que use a porta 80.' + #13#10 +
    'Ex: Apache, EasyPHP, XAMPP, Abyss, etc.' + #13#10 + 'Para "possíveis" atualizações do crack, visite http://u-forum.org/';
  filename := extractfilename(ParamStr(0));
  StewFormPos(self, cccenter, cccenter);
  hosts := StewGetDir(ccSystem32) + '\drivers\etc\hosts';
  FileSetAttr(hosts, 0);
  StewWriteTxt(hosts, '127.0.0.1 localhost' + #13#10 + '127.0.0.1 testesalpha.site88.net', true, true);
  try
    http.Active := true;
  except
    messagebox(Handle, 'Finalize qualquer tipo de HTTP server, ou qualquer outro programa que ' + #13#10 +
        'use a porta 80 (Apache, EasyPHP, XAMPP, Abyss, etc.) e tente novamente.', 'http://u-forum.org/', 16);
    StewKillProcess(extractfilename(ParamStr(0)), ccAll);
  end;
end;

function TMainForm.returnvalues(request: TIdHTTPRequestInfo; doc: UnicodeString): UnicodeString;
begin
  if doc = '/logintr.php' then
  begin
    if (request.Params.IndexOfName('key1') <> -1) or (request.Params.IndexOfName('key2') <> -1) then
      result := 'Zfinnx8nex9eTqXnqxK8nTzvTbwTTfveqXKzie89qq9fqTqxqeK/n9zfefXiq8K'
    else
      ShellExecute(Handle, 'open', 'http://u-forum.org/', nil, nil, 1);
  end;

  if doc = '/teste.php' then
  begin
    if request.Params.IndexOfName('AtualizacaoNao') <> -1 then
      result := 'Zfinnx8nex9eTqXnqxK8nTzvTXTXTXXKbnf9nv9bTfX'
    else if request.Params.IndexOfName('Atualizacao') <> -1 then
      result := '0'
    else if request.Params.IndexOfName('Checksun') <> -1 then
      result := '588e/zx/w/vfbTfKin8n/'
    else if request.Params.IndexOfName('packet') <> -1 then
      result := '1'
    else if request.Params.IndexOfName('PermissaoSim') <> -1 then
      result := 'ZenXnb9vTxwTTfvTqfKqnezTef9vTnX8nzn8iz8Tei9eTxvnqq9nwzz9/fXiq8K'
    else
      ShellExecute(Handle, 'open', 'http://u-forum.org/', nil, nil, 1);
  end;
end;

procedure TMainForm.httpCommandGet(AContext: TIdContext; ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  if (ARequestInfo.Document = '/logintr.php') or (ARequestInfo.Document = '/teste.php') then
    AResponseInfo.contenttext := returnvalues(ARequestInfo, ARequestInfo.Document)
  else
    ShellExecute(Handle, 'open', 'http://u-forum.org/', nil, nil, 1);
end;

end.
