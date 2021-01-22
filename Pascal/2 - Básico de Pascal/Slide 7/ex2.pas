Program ex2;
var
		A, B, C, D, R, S : integer;
Begin

	write('Insira um número: ');
	read(A);
	
	write('Insira um segundo número: ');
	read(B);
	
	write('Insira um terceiro número: ');
	read(C);
	
	R := A+B;
	S := C*C;
	D := (R+S);
	
	write('O resultado é: ', D/2:0:2); 
End.