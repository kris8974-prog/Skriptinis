clear;
clc;

v1 = 10:-1:-15;
v2 = log2(v1);
v3 = v1 ./ v2;
atsakymas = v3(:);

disp(atsakymas);

Cm1 = pi/2 : pi/2 : 3*pi/2;
Cm2 = -1 : 1;
Cm3 = -3 : -1 : -5;

C = [Cm1;
    Cm2;
    Cm3];

eiluciu_sumos = sum(C, 2);

disp(C);
disp(eiluciu_sumos);

A = 5;
f = 6;
sigma = 1.5;
U1 = 3;
U2 = 2;

t = 0:0.002:1.2;

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = sigma * randn(size(t));
signalas = s + n;

atrinktos_reiksmes = signalas(signalas > U1);

filtruotas_signalas = signalas;
filtruotas_signalas(abs(filtruotas_signalas) < U2) = 0;

nefiltruoto_dydis = size(signalas);
atrinktu_dydis = size(atrinktos_reiksmes);

didziausia_reiksme = max(filtruotas_signalas);
maziausia_reiksme = min(filtruotas_signalas);

disp(atrinktos_reiksmes);
disp(nefiltruoto_dydis);
disp(atrinktu_dydis);
disp(didziausia_reiksme);
disp(maziausia_reiksme);\

%% 

clc;
clear;

A = input('Iveskite 12 elementu vektoriu A: ');

B = [A(10:end), A(1:9)];

disp('vektorius B yra:');
disp(B);
