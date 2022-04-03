input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../quad}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(30) 
save u,p,k,a;
path p[];
u:=.7cm;
k:=1.8;
a:=1.3*u;

z0=(0,1)*u;
z1=k*z0 rotated 60;
z2=z0 rotated 120;
z3=k*z0 rotated 180;
z4=z0 rotated -120;
z5=k*z0 rotated -60;



draw z0..z1..z3..z4..cycle;
draw z1..z2..z4..z5..cycle;
draw z2..z3..z5..z0..cycle;
%draw z0--z2--z4--cycle;
%draw z0..z1..z3..z4..z5..z1..z2..z3..z5..z0..z1..z3..z4..z5..z1..z2..z3..z5..cycle;

dOt z0,z1,z2,z3,z4,z5;



label.top (btex $x'$ etex,  z3);
label.top (btex $x$ etex,  z0);
label.lrt (btex $y$ etex,  z4);
label.ulft (btex $y'$ etex,  z1);
label.llft (btex $z$ etex,  z2);
label.urt (btex $z'$ etex,  z5);

label.bot (btex $O_3$ etex,  z3+(0,-10));
endfig;

beginfig(40) 
save u,p,k,a;
path p[];
u:=1cm;
k:=1.8;
a:=1.3*u;

z0=(0,1)*u;
z1=k*z0 rotated 60;
z2=z0 rotated 120;
z3=k*z0 rotated 180;
z4=z0 rotated -120;
z5=k*z0 rotated -60;

z.shift=(-8,0)*u;

z.s0=(a,a)+z.shift;
z.s1=(a,-a)+z.shift;
z.s2=(-a,-a)+z.shift;
z.s3=(-a,a)+z.shift;

draw z.s0--z.s1--z.s2--z.s3--cycle;

draw z0..z1..z3..z4..cycle;
draw z1..z2..z4..z5..cycle;
draw z2..z3..z5..z0..cycle;
%draw z0--z2--z4--cycle;
%draw z0..z1..z3..z4..z5..z1..z2..z3..z5..z0..z1..z3..z4..z5..z1..z2..z3..z5..cycle;

dOt z0,z1,z2,z3,z4,z5;
dOt z.s0,z.s1,z.s2,z.s3;


label.top (btex $x'$ etex,  z3);
label.top (btex $x$ etex,  z0);
label.lrt (btex $y$ etex,  z4);
label.ulft (btex $y'$ etex,  z1);
label.llft (btex $z$ etex,  z2);
label.urt (btex $z'$ etex,  z5);

label.bot (btex $C_4$ etex,  z3+z.shift+(0,-10));
label.bot (btex $O_3$ etex,  z3+(0,-10));
endfig;

beginfig(50) 
save u,p;
path p[];
u:=1cm;

z.a=(0,0)*u;
z.b=(1,0)*u;
z.c=(.8,.5)*u;
z.shift =(4,0)*u;

z.x=2[z.a,z.b];
z.y=2[z.b,z.c];
z.z=2[z.c,z.a];
z.xx=(-1)[z.a,z.b];

draw z.a--z.x;
draw z.b--z.y;
draw z.c--z.z;

draw (z.xx--z.x) shifted z.shift;
draw (z.b--z.y) shifted z.shift;
draw (z.c--z.a) shifted z.shift;

dOt z.a,z.b,z.c,z.x,z.y,z.z;
dOt z.a+z.shift,z.b+z.shift,z.c+z.shift,z.x+z.shift,z.y+z.shift,z.xx+z.shift;

label.bot (btex $\tilde x$ etex,  z.x);
label.urt (btex $\tilde y$ etex,  z.y);
label.bot (btex $\tilde z$ etex,  z.z);
label.bot (btex $\tilde x'$ etex,  z.a);
label.bot (btex $\tilde y'$ etex,  z.b);
label.urt (btex $\tilde z'$ etex,  z.c);

label.bot (btex $\tilde x$ etex,  z.x+z.shift);
label.urt (btex $\tilde y$ etex,  z.y+z.shift);
label.urt (btex $\tilde z'$ etex,  z.c+z.shift);
label.bot (btex $\tilde z$ etex,  z.a+z.shift);
label.bot (btex $\tilde y'$ etex,  z.b+z.shift);
label.bot (btex $\tilde x'$ etex,  z.xx+z.shift);
endfig;

end
