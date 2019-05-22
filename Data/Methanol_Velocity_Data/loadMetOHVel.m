function [t,Vx,Vy,Vz] = loadMetOHVel()
% loads and combines data from the split methanol velocity data

N = 8; %number of file parts
step = 2500; %length of each file


VX = zeros(384,20001);
VY = VX;
VZ = VX;
T = zeros(1,20001);

for part = 1:N
    filename = ['Vel_data_MetOH_',num2str(part),'.mat'];
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