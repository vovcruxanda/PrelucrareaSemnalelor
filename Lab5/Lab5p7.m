%Test de verificare a stabilitatii
pkg load signal
den = input('Introduceti coeficientii de numitor:');
ki=poly2rc(den);
disp('Parametrii testului de stabilitate: ');
disp(ki);

