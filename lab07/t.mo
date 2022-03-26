model t
  parameter Real N=1500;

  Real n(start=15);
equation
  der(n) = (sin(9*time)+0.3*sin(4*time)*n)*(N-n);
end t;
