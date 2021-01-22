Program Pzim ;
var
  email,senha,senha2,msgUsuario: string;
  
  procedure SolicitaDadosLogin;
  begin
	  clrscr;
		writeln('Informe seu e-mail');
		readln(email);  
	  writeln('Informe sua senha');
		readln(senha);  
	  writeln('Informe novamente sua senha');
		readln(senha2);    
  end;
  
  function ValidaLogin(var erroLogin: string): Boolean;
  begin
    erroLogin := '';
    if Length(senha) < 6 then
    begin
      ValidaLogin := False;
      erroLogin := 'Senha deve ter no mínimo 6 caracteres';
    end
    else if (senha <> senha2) then
    begin
      ValidaLogin := False;
      erroLogin := 'Senha 1 não confere com senha 2';
    end
    else
      ValidaLogin := True;
  end;
  
  
Begin
  while true do
  begin
		SolicitaDadosLogin;
	  if ValidaLogin(msgUsuario) then
	  begin
	    writeln('Login OK, pressione enter pra finalizar');
	    break;
	  end  
	  else
	  begin
		  writeln('Login Inválido: '+msgUsuario);
		  readln;
		end;  
	end;	 
End.