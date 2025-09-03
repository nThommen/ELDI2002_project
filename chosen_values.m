u = 220;
f = 60;
omega_star = 376.99;
P_b = 2*10^5;
P_G1 = 0.8*P_b;
P_G2 = 1.4*P_b;
E1 = u;
E2 = u;
f_c = 2;
tau = 1/(2*f_c*pi);
delta_max_omega = 0.05;
K_P1 = delta_max_omega/P_G1;
K_P2 = 1/(delta_max_omega*P_G2);
P_L1 = 0.6*P_b;
P_L2 = 0.3*P_b;
G_11 = P_L1/u^2;
G_22 = P_L2/u^2;
B_12 = (0.1*(P_L2+P_L1))/(sin(15*pi/180)*u^2);
delta_0 = 0;
P_M1_0 = 0;
omega_1 = 2*f*pi; %Desired rotational frequency
%sin_delta = (omega_1-omega_star+K_P2*G_22*abs(E2)^2)/(K_P2*B_12*abs(E1)*abs(E2));
%probably supposed to be found through omega_1 in control block
%delta = asin((omega_1-omega_star+K_P2*G_22*abs(E2)^2)/(K_P2*B_12*abs(E2)*abs(E1)));

P1 = G_11*abs(E1)^2+B_12*E1*E2*sin(delta); %just checking

a = G_11*E1^2/tau;
b = B_12*E1^2/tau;
c = 1/tau;


% syms P_M1 u_sec Delta;
% 
% dtDelta = -K_P1*P_M1 + u_sec + K_P2*G_22*abs(E2)^2 - K_P2*B_12*abs(E1)*abs(E2)*sin(Delta);
% 
% dtPM1 = -(P_M1*G_11*abs(E1)^2)/tau + (P_M1*B_12*abs(E1)*abs(E2)*sin(Delta))/tau;
