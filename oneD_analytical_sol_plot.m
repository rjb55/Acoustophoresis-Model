function oneD_analytical_sol_plot(t0,tf,z0)

pa = 225e3; %pressure amp
rhop = 1050; %particle density
rho0 = 997; %liquid density
kp = 1/4.4e9; %particle compressibility 
k0 = 1/2.2e9; %liquid compressibility
a = 5e-6; %particle radius
n=1e-3; %viscosity of water
c0 = sqrt((1/k0/rho0)); %speed of sound
lambda = c0/5e6; %sound wavelength
k=2*pi()/lambda;

kr = kp/k0; %compressibility ratio
rhor = rhop/rho0; %density ratio

phi = 1/3*((5*rhor - 2)/(2*rhor + 1) - kr); %acoustophoretic contrast factor
Eac = pa^2/(4*rho0*c0^2); %acoustic energy density

t = t0:0.0001:tf; %time period
    
z = (1/k)*atan(tan(k*z0)*exp((4*phi/3)*(k*a)^2*(Eac/n)*t));

plot(t,z)