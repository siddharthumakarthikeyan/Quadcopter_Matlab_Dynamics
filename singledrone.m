function Xp = singledrone(t, x)

w1 = 10
w2 = 10
w3 = 10
w4 = 10
m  = 0.05
g  = 9.8
Ix = 2
Iy = 2
Iz = 2
l  = 5
Jr = 5


w  = w2+w4-w1-w3;
u1 = ((w4)^2)-((w2)^2);
u2 = ((w3)^2)-((w1)^2);
u3 = ((w4)^2)+((w2)^2)-((w1)^2)-((w3)^2);
u4 = ((w1)^2)+((w2)^2)+((w3)^2)+((w4)^2);


c1 = ((Iy-Iz)/Ix);
c2 = ((Ix-Iz)/Iy);
c3 = ((Ix-Iy)/Iz);
c4 = (Jr/Ix);
c5 = (Jr/Iy);
c6 = (l/Ix);
c7 = (l/Iy);
c8 = (l/Iz);


Xp = zeros(12,1)

%x
Xp(1) = x(4);
Xp(4) = (((cos(x(7))*sin(x(8))*cos(x(9)))+(sin(x(7))*sin(x(9)))*u4)/m);

%y
Xp(2) = x(5);
Xp(5) = (((cos(x(7))*sin(x(8))*sin(x(9)))-(sin(x(7))*cos(x(9)))*u4)/m);

%z
Xp(3) = x(6);
Xp(6) = (-g)+(((cos(x(7))*cos(x(8)))*u4)/m);

%phi
Xp(7) = x(10);
Xp(10) = (c1*x(11)*x(12))+ (c4*x(11)*w) + (c6*u1);

%thetha
Xp(8) = x(11);
Xp(11) = (c2*x(10)*x(12))+ (c5*x(10)*w) + (c7*u2);

%Psi
Xp(9) = x(12);
Xp(12) = (c3*x(10)*x(11))+ (c8*u3);


