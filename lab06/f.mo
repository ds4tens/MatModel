model f
  parameter Real a=0.016;
  parameter Real b=0.006;
  
  Real S(start=20002);
  Real I(start=77);
  Real R(start=21);
equation
  der(S) = 0;
  der(I) = -b*I;
  der(R) = b*I;
end f;
