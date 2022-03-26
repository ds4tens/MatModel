model s
  parameter Real a=0.000015;
  parameter Real b=0.82;
  parameter Real N=1500;

  Real n(start=15);
equation
  der(n)=(a+b*n)*(N-n);
end s;
