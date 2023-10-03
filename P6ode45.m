[t, x] = ode45(@CD,[0 0.005],[0 0]);

hold on

figure(1)
plot(t,x(:,2));
grid on
title("Voltaje de salida");
xlabel("Tiempo");
ylabel("Volts");
