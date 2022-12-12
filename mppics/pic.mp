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



label.top (btex $x'$ etex,  z3+(1,0));
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

z.o=origin;
z.zx=(1,0)*u;
z.xy=z.zx rotated 120 scaled 1.2;
z.yz=z.zx rotated -120 scaled 1.1;
z.x=z.zx+z.zx rotated 60 scaled .5;
z.xxz=z.zx+z.zx rotated 0 scaled .5;
z.xzz=z.zx+z.zx rotated -60 scaled .5;
z.zz=z.zx+z.zx rotated -60 scaled .9;
z.y=z.xy+z.xy rotated 60 scaled .6;
z.xx=z.xy+z.xy rotated -60 scaled .5;
z.z=z.yz+z.yz rotated 60 scaled .4;
z.yy=z.yz+z.yz rotated -60 scaled .5;

draw z.x--z.zx--z.o--z.xy--z.xx;
draw z.y--z.xy--z.o--z.yz--z.yy;
draw z.z--z.yz--z.o--z.zx--z.zz;
drawarrow ddarc(z.x, z.xxz, z.xzz)(-15, -10);


dOt z.o,z.x, z.xx, z.y, z.yy, z.z, z.zz;

label.lrt (btex $o$ etex,  z.o+(-2,0));
label.top (btex $x'$ etex,  z.xx+(1,0));
label.top (btex $x$ etex,  z.x);
label.lft (btex $z$ etex,  z.y);
label.lft (btex $z'$ etex,  z.yy);
label.bot (btex $y$ etex,  z.z);
label.bot (btex $y'$ etex,  z.zz+(1,2));
endfig;

beginfig(50) 
save u,p;
path p[];
u:=1.2cm;

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
label.ulft (btex $\tilde x'{=}\tilde c$ etex,  z.a+(2,1));
label.bot (btex $\tilde a{=}\tilde y'$ etex,  z.b);
label.rt (btex $\tilde b{=}\tilde z'$ etex,  z.c+(0,3));

label.bot (btex $\tilde x$ etex,  z.x+z.shift);
label.urt (btex $\tilde y$ etex,  z.y+z.shift);
label.urt (btex $\tilde b{=}\tilde z'$ etex,  z.c+z.shift);
label.ulft (btex $\tilde z{=}\tilde c$ etex,  z.a+z.shift+(2,1));
label.bot (btex $\tilde a{=}\tilde y'$ etex,  z.b+z.shift);
label.bot (btex $\tilde x'$ etex,  z.xx+z.shift);
endfig;

beginfig(60) 
save u,p;
path p[];
u:=1cm;

z.u=(1,.5)*u;
z.d=z.u yscaled -1;

z.x=(0,0)*u;
z.xx=(5,0)*u;
z.xy=(1,0)*u;
z.y=z.xy-1.5*z.d;
z.xxyy=(2,0)*u;
z.yy=z.xxyy+2*z.u;
z.xz=(3,0)*u;
z.z=z.xz-1.5*z.u;
z.xxzz=(4,0)*u;
z.zz=z.xxzz+2*z.d;

draw z.x--z.xx;
draw z.y--z.xy;
draw z.yy--z.xxyy;
draw z.z--z.xz;
draw z.zz--z.xxzz;
%draw z.xy--z.xxyy pensemibold;
%draw z.xz--z.xxzz pensemibold;

dOt z.x,z.xx,z.y,z.yy,z.z,z.zz;

label.lft (btex $x$ etex,  z.x);
label.lft (btex $y$ etex,  z.y);
label.lft (btex $z$ etex,  z.z);
label.rt (btex $x'$ etex,  z.xx);
label.rt (btex $y'$ etex,  z.yy);
label.rt (btex $z'$ etex,  z.zz);
endfig;

end
