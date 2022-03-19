model s
  parameter Real a=0.016;
  parameter Real b=0.006;
  
  Real S(start=20002);
  Real I(start=77);
  Real R(start=21);
equation
  der(S) = -a*S;
  der(I) = a*S-b*I;
  der(R) = b*I;
end s;

![Графики численности в случае $I(0)\leq I^*$](image/01.png){ #fig:001 width=70% height=70% }

![Графики численности в случае $I(0)>I^*$](image/02.png){ #fig:002 width=70% height=70% }