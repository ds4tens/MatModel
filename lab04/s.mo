model s
  parameter Real w=7;
  parameter Real g=5;
  Real x(start=0);
  Real y(start=-1);
equation
  der(x) = y;
  der(y) = -g*y-w*x;
end s;
