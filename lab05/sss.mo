model sss
  parameter Real a=0.22;
  parameter Real b=0.066;
  parameter Real c=0.66;
  parameter Real d=0.022;
  
  Real x(start=7);
  Real y(start=15);
equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
end sss;
