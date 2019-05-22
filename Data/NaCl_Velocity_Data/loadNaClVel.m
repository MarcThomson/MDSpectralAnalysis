function [t,Vx,Vy,Vz] = loadNaClVel()
% loads and combines data from the split methanol velocity data

N = 20; %number of file parts
step = 500; %length of each file


VX = zeros(2000,10001);
VY = VX;
VZ = VX;
T = zeros(1,10001);

for part = 1:N
    filename = ['Vel_data_NaCl_',num2str(part),'.mat'];
    if part < N
        start = 1 + step*(part-1);finish = start + step - 1;
    else
        start = 1 + step*(part-1);finish = start + step;
    end
    load(filename);
    VX(:,start:finish) = Vx;
    VY(:,start:finish) = Vy;
    VZ(:,start:finish) = Vz;
    T(start:finish) = t;
end

t = T;
Vx = VX;
Vy = VY;
Vz = VZ;
end