model f
  parameter Real a(start=0.4);
  parameter Real b(start=0.607);
  parameter Real c(start=0.667);
  parameter Real h(start=0.42);
  Real y1(start=250000);
  Real y2(start=380000);
equation
  der(y1)=-a*y1-b*y2+2*sin(3*time);
  der(y2)=-c*y1-h*y2+2*cos(6*time);
end f;
