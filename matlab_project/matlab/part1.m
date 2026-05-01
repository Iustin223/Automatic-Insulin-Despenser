s = tf('s')
Gr = (-0.045*(96.153*s + 1)*(58.823*s + 1)*(5.714*s + 1))/(s*(6.07*s + 1)*(28.208*s + 1))

 %% 
 
s = tf('s');
Gp = -0.1741/((96.153*s + 1)*(58.823*s + 1)*(5.714*s + 1))
%% 
s = tf('s');
nCMVK = -0.5026*((96.153*s + 1)*(58.823*s + 1));
dCMVK = (s*(0.5714*s + 1));
G =  (-0.5026*(96.153*s + 1)*(58.823*s + 1))/(s*(0.5714*s + 1));
%% 
p1=0.005;
p2=0.017;
p3=8.08*10^(-6);
n=0.175;
V=120;
Xb=0.0054;
Gb=80;
A=[-(p1+Xb) -Gb 0;0 -p2 p3;0 0 -n];

B=[0;0;1/V];
C=[1 0 0];
P1=A*B;
A1=A*A;
P2=A1*B;
P=[B P1 P2];
D=det(P); % => este diferit de 0
%polinomul caracteristic
syms k1 k2 k3 s 
A=[-(p1+Xb) -Gb 0;0 -p2 p3;0 0 -n];
B=[0;0;1/V];
K=[k1 k2 k3];
I=eye(3);
C1=s*I-A+B*K;
C2=det(C1);
C3=s^3+s^2*(p3+p2+p1)+s*(p1*p3+p1*p3+p1*p2)+p1*p2*p3;
K3=(0.3192-n-Xb)/V
K2=(V*(0.0148-n*(p1+p2+Xb)-p2*(p1+Xb)))/p3-(K3*(p1+p2+Xb))/p3
K1=(V*p2*n*(p1+Xb)+(p1+Xb)*(K3*p2+K2*p3)-V*0.000188)/(p3*Gb)
K=[K1 K2 K3];

E=(B*K-A)^(-1);
Kr=(C*E*B)^(-1);
% K3=(p3-n-Xb)/V

% K2=(V*(p1*p3+p2*p3-n*(p1+p2+Xb)-p1*Xb))/p3-(K3*(p1+p2+Xb))/p3;
% K1=(V*p2*n*(p1+Xb))/(Gb*p3)+((p1+Xb)*(K3*p2+K2*p3))/(Gb*p3)-(V*p1*p2)/Gb

%% 
p1=0.005;
p2=0.017;
p3=8.08*10^(-6);
n=0.175;
V=120;
Xb=0.0054;
Gb=80;
%Determinantul
A=[-(p1+Xb) -Gb 0;0 -p2 p3;0 0 -n];
B=[0;0;1/V];
C=[1 0 0];  

C1=C*A;
A1=A*A;
C2=C*A1;
C=[C C1 C2];
% det(C); % diferit de 0
%polinomul caracteristic
syms s k1 k2 k3;
I=eye(3);
K=[k1;k2;k3];
D1=s*I;
D2=[k1 0 0;k2 0 0;k3 0 0];
D=D1-A+D2;
det(D);
k1=0.5328-n-p1-p2-Xb
k2=(n*(p1+p2+Xb+k1)+p2*(p1+Xb+k1)-0.0413)/Gb
k3=(p2*n*(p1+Xb+k1)-k2*n-0.000875)/(Gb*p3)
K=[k1;k2;k3];




