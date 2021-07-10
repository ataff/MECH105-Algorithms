f = 7*sin(x)*exp(-x)-1;
df = diff(f);


x = 0.05;
x_old = 100;
x_true = 0.0623776;
iter = 0;
while abs(x_old-x) > 10^-3 && x ~= 0
    x_old = x;
    x = x - (f)/(df);
    iter = iter + 1;
    fprintf('Iteration %d: x=%.20f, err=%.20f\n', iter, x, x_true-x);
    pause;
end
x = -10:0.01:10;
f = x.^3 - 0.165*x.^2 + 3.993*10^-4;
figure;
plot(f)
grid on