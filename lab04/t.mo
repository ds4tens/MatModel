model t
  parameter Real w=2;
  parameter Real g=4;
  Real x(start=0);
  Real y(start=-1);
equation
  der(x) = y;
  der(y) = -g*y-w*x+5*sin(time);
end t;
