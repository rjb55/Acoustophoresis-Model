function [ z , z1 ] = ParticleMotion( zin , dt , T )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

z=zin; %set first value of z to initial z
storecount = 1; %create counter

pa = 300e3;
rhop = 1050;
rho0 = 997;
kp = 4.4e9;
k0 = 2.2e9;
a = 10e-5;
lambda = 1.5e-3;
n=8.9e-4;
c0 = sqrt((k0/rho0));
w=2e6/(2*pi());
k=2*pi()/lambda

for t = 0:dt:T %loop for time

Frad = RadiationForce(pa,rhop,rho0,kp,k0,a,c0,lambda,z,w,t) %evaluate radiation force

z1 = Frad/(6*pi()*n*a); %saolve for particle velocity

z = z1*dt; %evaluate new z position

%Fd = 6*pi()*n*a*z1;
%m*z2 = Frad - Fd;

Tvec(storecount) = t; %store time in vector
Vvec(storecount) = z1; %store particle velocity in vector
Zvec(storecount) = z; %store particle displacement in vector

storecount = storecount + 1; %increase counter by 1

end

plot(Tvec,Zvec)

end

