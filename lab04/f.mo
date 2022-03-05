model f
  parameter Real w=7.5;
  Real x(start=0);
  Real y(start=-1);
equation
  der(x) = y;
  der(y) = -w*x;
end f;
