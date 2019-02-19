x_old = input('Enter guess:');
tol = input('Enter tolerance:');
syms x
f = -12*x.^5 -6*x.^3 +10;
iter = 0;
for idx = 1:10
   x_new = newton_ralphson(f,x_old);
   iter=iter+1;
   err = abs((x_new - x_old)/x_new);
   if( err < tol)
       fprintf('Iteration %d: x=%.3f, err=%.3f\n', iter, x_new, err)
       break
   end
   x_old = x_new;
end
