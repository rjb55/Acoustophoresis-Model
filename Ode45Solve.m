function dz_dt = ODE45Solve(t,z)

pa = 225e3; %pressure amp
rhop = 1050; %particle density
rho0 = 997; %liquid density
kp = 1/4.4e9; %particle compressibility 
k0 = 1/2.2e9; %liquid compressibility
a = 5e-6; %particle radius
n=1e-3; %viscosity of water
c0 = sqrt((1/k0/rho0)); %speed of sound
lambda = c0/5e6; %sound wavelength
k=2*pi()/lambda; %wave number

kr = kp/k0;
rhor = rhop/rho0;

phi = 1/3*((5*rhor - 2)/(2*rhor + 1) - kr);
Eac = pa^2/(4*rho0*c0^2);

dz_dt = 4*pi()*phi*k*a^3*Eac*sin(2*k*z)/(6*pi()*n*a)

