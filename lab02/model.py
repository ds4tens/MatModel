import math
import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plot

delta = 8.1 # заданное расстояние
n = 3.2 # разница в скорости
fi = math.pi * 3/4 # угол движения

# растояние до движения по полюсу
r0 = delta/(n+1)
r1 = delta/(n-1)

# функция, описывающая движение катера береговой охраны
def der(tetha, r):
    dr = r / math.sqrt(pow(n,2) -1)
    return dr

# функция, описывающая движение лодки браконьеров
def der2(time):
    xt = math.tan(fi) * time
    return xt

def solver(rs, name):
    print(f"Решение условия {name} r{name} := {round(rs,6)}")
    # решение дифур для катера
    tetha = np.arange(0, 2*math.pi, 0.01)
    r = odeint(der, rs, tetha)
    # движение лоджки
    t=np.arange(0.00000000000001, 20)
    temp_r=np.sqrt(pow(t,2) + pow(der2(t),2))

    tet1=np.arctan(der2(t)/t)

    dot_cross=0
    for i in range(len(tetha)):
        if round(tetha[i], 2) == round(fi+math.pi, 2):
            dot_cross=i  # точка встречи

    plot.rcParams["figure.figsize"] = (8, 8)

    plot.polar(tetha, r, 'blue', label = 'Катер охраны')
    plot.polar(tet1, temp_r, 'red', label = 'Лодка браконьеров')

    plot.legend()
    plot.savefig(f"{name}")
    plot.clf() # сброс plot

    print("Tetha := {}  \t R := {} ".format(tetha[dot_cross], float( r[dot_cross])) )
    print("x := {} \t y := {}".format(round(r[dot_cross][0] / math.sqrt(2), 6), round(-r[dot_cross][0] / math.sqrt(2), 6)))

solver(r0, "1")
solver(r1, "2")

