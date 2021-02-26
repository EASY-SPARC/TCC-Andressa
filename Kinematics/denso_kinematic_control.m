clear all;
close all;
clear classes;
clc;

%Create a new DQ_kinematics object with the Denso standard Denavit-Hartenberg parameters           
denso_kine = DQ_DENSO;

% Basic definitions for the simulation
theta = [0,0,0,0,0,0]';
% Move Arm
position = [0.3892,0,0.1981]

% Target posisition
thetad = [0,0,0,0,0,0]';

%Gripper ajust
phi = pi/2;

n_y =1;
n_x =0;
n_z =0;

n_vec = [n_x,n_y,n_z];
n = n_vec/norm(n_vec);

n = DQ([0, n_vec(1), n_vec(2), n_vec(3)]);

theta1 = pi/2;

rz = cos(theta1/2) + sin(theta1/2)*DQ([0, 0, 0, 1]);

ry = cos(pi/4) + sin(pi/4)*DQ([0, 0, 1, 0]); 

r = cos(phi/2) + sin(phi/2)*n;

r = ry * r;
% r = rz * r;

p = DQ([0, position(1), position(2), position(3)]);


% Desire positions in DQ
xd = r + 1/2 * DQ.E * p * r;

epsilon = 0.02;
K = 0.1;
error = epsilon+1;
lambda = 0.5;
pause(1);
xms=[]
xds=[]

%Configure the axis for a good visualisation


%Controll loop

while norm(error) > epsilon 
    jacob = denso_kine.jacobian(theta);
    xm = denso_kine.fkm(theta);
    error = vec8(xd-xm);
    xms = [xms,vec8(xm)];
    xds = [xds,vec8(xd)];
    jacob_pinv = (transpose(jacob)/(jacob*transpose(jacob) + (lambda^2)*eye(8)));
    theta = theta + K*jacob_pinv*error;
    norm(error)
    plot(denso_kine, theta');
    plot(xm,'scale',0.08);
    hold on
    drawnow;
    axis equal;
    axis([-0.4,0.5,-0.8,0.8,-0.2,0.8]);
    view(-0.5 ,0);
  
end
%%
t = 0:K:length(xms)*K;
%1
subplot(4, 2, 1);
plot(xms(1,:)')
hold on
plot(xds(1,:)','r')
xlabel("t(s)");
legend('x_{m_1}', 'x_{d_1}');
hold off
%2
subplot(4, 2, 2);
plot(xms(2,:)')
hold on
plot(xds(2,:)','r')
xlabel("t(s)");
legend('x_{m_2}', 'x_{d_2}');
hold off
%3
subplot(4, 2, 3);
plot(xms(3,:)')
hold on
plot(xds(3,:)','r')
xlabel("t(s)");
legend('x_{m_3}', 'x_{d_3}');
hold off
%4
subplot(4, 2, 4);
plot(xms(4,:)')
hold on
plot(xds(4,:)','r')
xlabel("t(s)");
legend('x_{m_4}', 'x_{d_4}');
hold off
%5
subplot(4, 2, 5);
plot(xms(5,:)')
hold on
plot(xds(5,:)','r')
xlabel("t(s)");
legend('x_{m_5}', 'x_{d_5}');
hold off
%6
subplot(4, 2, 6);
plot(xms(6,:)')
hold on
plot(xds(6,:)','r')
xlabel("t(s)");
legend('x_{m_6}', 'x_{d_6}');
hold off
%7
subplot(4, 2, 7);
plot(xms(7,:)')
hold on
plot(xds(7,:)','r')
xlabel("t(s)");
legend('x_{m_7}', 'x_{d_7}');
hold off
%8
subplot(4, 2, 8);
plot(xms(8,:)')
hold on
plot(xds(8,:)','r')
xlabel("t(s)");
legend('x_{m_8}', 'x_{d_8}');
hold off