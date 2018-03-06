function [ P2in , V2in ] = AcousticWave( pa,rho0,c0,z,k,w,t)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
P2in = 1/2*pa^2*cos(k*z)^2;

V2in = pa^2*sin(k*z)^2/(rho0*c0);

% Pin = pa*cos(k*z)*sin(w*t)
% Vin = (-pa/(rho0*c0))*sin(k*z)*cos(w*t)

end

