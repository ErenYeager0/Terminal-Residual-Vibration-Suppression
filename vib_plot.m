clear all;clc;

vib_init=xlsread("vib_init.xlsx");
vib_opt=xlsread("vib_opt.xlsx");
vib_shape=xlsread("vib_shape.xlsx");
cycle=length(vib_init(:,1));
time=0:0.004:(cycle-1)*0.004;
plot(time,vib_init(:,5)+9.8,'linewidth',2);
hold on;
plot(time,vib_shape(:,5)+9.8,'linewidth',2);
plot(time,vib_opt(:,5)+9.8,'linewidth',2);
hold on;
legend('原始振动曲线','输入整形后振动曲线','本文优化后振动曲线');
grid on;xlim([time(1),time(end)]);
% title('末端Z方向振动加速度曲线');
xlabel('时间 T(s)');ylabel('加速度 a(m/s^2)');

% zp = BaseZoom();
% zp.plot;