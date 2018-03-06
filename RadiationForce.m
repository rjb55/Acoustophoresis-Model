function [ Frad ] = RadiationForce(pa,rhop,rho0,kp,k0,a,c0,lambda,z,w,t)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

k=2*pi()/lambda; 

%[P2in , V2in] = AcousticWave(pa,rho0,c0,z,k,w,t);

kr = kp/k0; %compressability ratio of particle to liquid
rhor = rhop/rho0; %density ratio of particle to liquid

%f1 = 1-kr;
%f2 = (2*(rhor-1))/(2*rhor+1);

%Urad = -4*pi()/3*(a^3)*(f1/(2*rho0*c0^2)*P2in - f2*3/4*rho0*V2in);
% %does this need to be differentiated in matlab to achieve generality? 
% 

phi = 1/3*((5*rhor - 2)/(2*rhor + 1) - kr);

Eac = pa^2/(4*rho0*c0^2);

Frad = 4*pi()*phi*k*a^3*Eac*sin(2*k*z);

% Frad = gradient(Urad);

end

