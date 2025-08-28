u = 220;
f = 60;
omega_star = 376.99;
P_b = 2*10^7;
P_G1 = 0.6*P_b;
P_G2 = 1.4*P_b;
E1 = u;
E2 = u;
f_c = 2;
tau = 1/(2*f_c*pi);
delta_max_omega = 0.05;
K_P1 = delta_max_omega/P_b;
K_P2 = 1/(delta_max_omega*P_b);
P_L1 = 0.4*P_b;
P_L2 = 1.1*P_b;
G_11 = P_L1/u^2;
G_22 = P_L2/u^2;
B_12 = (0.1*(P_L2+P_L1))/(sin(15*pi/180)*u^2);


a = G_11*E1^2/tau
b = B_12*E1^2/tau
c = 1/tau


syms P_M1 u_sec Delta;

a = -K_P1*P_M1 + u_sec + K_P2*G_22*abs(E2)^2 - K_P2*B_12*abs(E1)*abs(E2)*sin(Delta)

b = -(P_M1*G_11*abs(E1)^2)/tau + (P_M1*B_12*abs(E1)*abs(E2)*sin(Delta))/tau
