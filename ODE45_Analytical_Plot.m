close all
clear all
t0 = 0; tf = 0.6;
z0 = 5e-6;% Initial conditions

[t,z] = ode45('Ode45Solve',[t0,tf],[z0]);

plot(t,z) 

hold on

oneD_analytical_sol_plot(t0,tf,z0)

xlabel('time (s)')
ylabel('distance travlled (m)')
legend('Numerical Solution' , 'Analytical Solution')