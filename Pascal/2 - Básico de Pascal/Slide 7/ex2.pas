Program ex2;
var
		A, B, C, D, R, S : integer;
Begin

	write('Insira um n�mero: ');
	read(A);
	
	write('Insira um segundo n�mero: ');
	read(B);
	
	write('Insira um terceiro n�mero: ');
	read(C);
	
	R := A+B;
	S := C*C;
	D := (R+S);
	
	write('O resultado �: ', D/2:0:2); 
End.