model v
  parameter Real a(start=0.337);
  parameter Real b(start=0.733);
  parameter Real c(start=0.8);
  parameter Real h(start=0.29);
  Real y1(start=250000);
  Real y2(start=380000);
equation
  der(y1)=-a*y1-b*y2*y1+2*sin(2*time)+1;
  der(y2)=-c*y1*y2-h*y2+2*cos(time);
end v;
