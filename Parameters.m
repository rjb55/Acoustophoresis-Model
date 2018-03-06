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