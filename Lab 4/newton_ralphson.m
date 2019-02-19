function[a] = newton_ralphson(f,x1)
syms x
g = diff(f);
b = x - (f/g);
x = x1;
a = eval(b);
